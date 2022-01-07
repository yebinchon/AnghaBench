
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_cec {int tx_done; scalar_t__ tx_buf_cur; scalar_t__ tx_buf_cnt; int* tx_buf; int rx_done; scalar_t__ rx_buf_cnt; int* rx_buf; int tx_status; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 scalar_t__ CEC_MAX_MSG_SIZE ;
 int CEC_TX_STATUS_ARB_LOST ;
 int CEC_TX_STATUS_ERROR ;
 int CEC_TX_STATUS_LOW_DRIVE ;
 int CEC_TX_STATUS_NACK ;
 int CEC_TX_STATUS_OK ;
 int IRQ_HANDLED ;
 int IRQ_WAKE_THREAD ;
 int TEGRA_CEC_INT_MASK ;
 int TEGRA_CEC_INT_MASK_TX_REGISTER_EMPTY ;
 int TEGRA_CEC_INT_STAT ;
 int TEGRA_CEC_INT_STAT_RX_REGISTER_FULL ;
 int TEGRA_CEC_INT_STAT_RX_START_BIT_DETECTED ;
 int TEGRA_CEC_INT_STAT_TX_ARBITRATION_FAILED ;
 int TEGRA_CEC_INT_STAT_TX_BUS_ANOMALY_DETECTED ;
 int TEGRA_CEC_INT_STAT_TX_FRAME_OR_BLOCK_NAKD ;
 int TEGRA_CEC_INT_STAT_TX_FRAME_TRANSMITTED ;
 int TEGRA_CEC_INT_STAT_TX_REGISTER_EMPTY ;
 int TEGRA_CEC_INT_STAT_TX_REGISTER_UNDERRUN ;
 int TEGRA_CEC_RX_REGISTER ;
 int TEGRA_CEC_RX_REGISTER_EOM ;
 int TEGRA_CEC_TX_REGISTER ;
 int cec_read (struct tegra_cec*,int ) ;
 int cec_write (struct tegra_cec*,int ,int) ;
 int dev_err (struct device*,char*) ;
 struct tegra_cec* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*) ;
 int tegra_cec_error_recovery (struct tegra_cec*) ;

__attribute__((used)) static irqreturn_t tegra_cec_irq_handler(int irq, void *data)
{
 struct device *dev = data;
 struct tegra_cec *cec = dev_get_drvdata(dev);
 u32 status, mask;

 status = cec_read(cec, TEGRA_CEC_INT_STAT);
 mask = cec_read(cec, TEGRA_CEC_INT_MASK);

 status &= mask;

 if (!status)
  return IRQ_HANDLED;

 if (status & TEGRA_CEC_INT_STAT_TX_REGISTER_UNDERRUN) {
  dev_err(dev, "TX underrun, interrupt timing issue!\n");

  tegra_cec_error_recovery(cec);
  cec_write(cec, TEGRA_CEC_INT_MASK,
     mask & ~TEGRA_CEC_INT_MASK_TX_REGISTER_EMPTY);

  cec->tx_done = 1;
  cec->tx_status = CEC_TX_STATUS_ERROR;
  return IRQ_WAKE_THREAD;
 }

 if ((status & TEGRA_CEC_INT_STAT_TX_ARBITRATION_FAILED) ||
     (status & TEGRA_CEC_INT_STAT_TX_BUS_ANOMALY_DETECTED)) {
  tegra_cec_error_recovery(cec);
  cec_write(cec, TEGRA_CEC_INT_MASK,
     mask & ~TEGRA_CEC_INT_MASK_TX_REGISTER_EMPTY);

  cec->tx_done = 1;
  if (status & TEGRA_CEC_INT_STAT_TX_BUS_ANOMALY_DETECTED)
   cec->tx_status = CEC_TX_STATUS_LOW_DRIVE;
  else
   cec->tx_status = CEC_TX_STATUS_ARB_LOST;
  return IRQ_WAKE_THREAD;
 }

 if (status & TEGRA_CEC_INT_STAT_TX_FRAME_TRANSMITTED) {
  cec_write(cec, TEGRA_CEC_INT_STAT,
     TEGRA_CEC_INT_STAT_TX_FRAME_TRANSMITTED);

  if (status & TEGRA_CEC_INT_STAT_TX_FRAME_OR_BLOCK_NAKD) {
   tegra_cec_error_recovery(cec);

   cec->tx_done = 1;
   cec->tx_status = CEC_TX_STATUS_NACK;
  } else {
   cec->tx_done = 1;
   cec->tx_status = CEC_TX_STATUS_OK;
  }
  return IRQ_WAKE_THREAD;
 }

 if (status & TEGRA_CEC_INT_STAT_TX_FRAME_OR_BLOCK_NAKD)
  dev_warn(dev, "TX NAKed on the fly!\n");

 if (status & TEGRA_CEC_INT_STAT_TX_REGISTER_EMPTY) {
  if (cec->tx_buf_cur == cec->tx_buf_cnt) {
   cec_write(cec, TEGRA_CEC_INT_MASK,
      mask & ~TEGRA_CEC_INT_MASK_TX_REGISTER_EMPTY);
  } else {
   cec_write(cec, TEGRA_CEC_TX_REGISTER,
      cec->tx_buf[cec->tx_buf_cur++]);
   cec_write(cec, TEGRA_CEC_INT_STAT,
      TEGRA_CEC_INT_STAT_TX_REGISTER_EMPTY);
  }
 }

 if (status & TEGRA_CEC_INT_STAT_RX_START_BIT_DETECTED) {
  cec_write(cec, TEGRA_CEC_INT_STAT,
     TEGRA_CEC_INT_STAT_RX_START_BIT_DETECTED);
  cec->rx_done = 0;
  cec->rx_buf_cnt = 0;
 }
 if (status & TEGRA_CEC_INT_STAT_RX_REGISTER_FULL) {
  u32 v;

  cec_write(cec, TEGRA_CEC_INT_STAT,
     TEGRA_CEC_INT_STAT_RX_REGISTER_FULL);
  v = cec_read(cec, TEGRA_CEC_RX_REGISTER);
  if (cec->rx_buf_cnt < CEC_MAX_MSG_SIZE)
   cec->rx_buf[cec->rx_buf_cnt++] = v & 0xff;
  if (v & TEGRA_CEC_RX_REGISTER_EOM) {
   cec->rx_done = 1;
   return IRQ_WAKE_THREAD;
  }
 }

 return IRQ_HANDLED;
}
