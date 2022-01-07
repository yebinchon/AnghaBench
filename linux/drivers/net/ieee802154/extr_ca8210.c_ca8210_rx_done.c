
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct work_priv_container {int work; struct ca8210_priv* priv; } ;
struct cas_control {int* tx_in_buf; struct ca8210_priv* priv; } ;
struct ca8210_priv {int ca8210_is_awake; TYPE_1__* spi; int mlme_workqueue; int hw; int sync_up; int sync_exchange_complete; scalar_t__ sync_command_response; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int CA8210_SPI_BUF_SIZE ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int MAC_TRANSACTION_OVERFLOW ;
 int SPI_HWME_WAKEUP_INDICATION ;
 int SPI_MCPS_DATA_CONFIRM ;
 int SPI_SYN ;
 int ca8210_mlme_reset_worker ;
 int ca8210_net_rx (int ,int*,unsigned int) ;
 int cascoda_api_upstream (int*,unsigned int,TYPE_1__*) ;
 int complete (int *) ;
 int dev_crit (int *,char*,unsigned int) ;
 int dev_info (int *,char*) ;
 int dev_notice (int *,char*) ;
 int dev_warn (int *,char*) ;
 struct work_priv_container* kmalloc (int,int ) ;
 int memcpy (scalar_t__,int*,unsigned int) ;
 int msleep (int) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void ca8210_rx_done(struct cas_control *cas_ctl)
{
 u8 *buf;
 unsigned int len;
 struct work_priv_container *mlme_reset_wpc;
 struct ca8210_priv *priv = cas_ctl->priv;

 buf = cas_ctl->tx_in_buf;
 len = buf[1] + 2;
 if (len > CA8210_SPI_BUF_SIZE) {
  dev_crit(
   &priv->spi->dev,
   "Received packet len (%u) erroneously long\n",
   len
  );
  goto finish;
 }

 if (buf[0] & SPI_SYN) {
  if (priv->sync_command_response) {
   memcpy(priv->sync_command_response, buf, len);
   complete(&priv->sync_exchange_complete);
  } else {
   if (cascoda_api_upstream)
    cascoda_api_upstream(buf, len, priv->spi);
   priv->sync_up++;
  }
 } else {
  if (cascoda_api_upstream)
   cascoda_api_upstream(buf, len, priv->spi);
 }

 ca8210_net_rx(priv->hw, buf, len);
 if (buf[0] == SPI_MCPS_DATA_CONFIRM) {
  if (buf[3] == MAC_TRANSACTION_OVERFLOW) {
   dev_info(
    &priv->spi->dev,
    "Waiting for transaction overflow to stabilise...\n");
   msleep(2000);
   dev_info(
    &priv->spi->dev,
    "Resetting MAC...\n");

   mlme_reset_wpc = kmalloc(sizeof(*mlme_reset_wpc),
       GFP_KERNEL);
   if (!mlme_reset_wpc)
    goto finish;
   INIT_WORK(
    &mlme_reset_wpc->work,
    ca8210_mlme_reset_worker
   );
   mlme_reset_wpc->priv = priv;
   queue_work(priv->mlme_workqueue, &mlme_reset_wpc->work);
  }
 } else if (buf[0] == SPI_HWME_WAKEUP_INDICATION) {
  dev_notice(
   &priv->spi->dev,
   "Wakeup indication received, reason:\n"
  );
  switch (buf[2]) {
  case 0:
   dev_notice(
    &priv->spi->dev,
    "Transceiver woken up from Power Up / System Reset\n"
   );
   break;
  case 1:
   dev_notice(
    &priv->spi->dev,
    "Watchdog Timer Time-Out\n"
   );
   break;
  case 2:
   dev_notice(
    &priv->spi->dev,
    "Transceiver woken up from Power-Off by Sleep Timer Time-Out\n");
   break;
  case 3:
   dev_notice(
    &priv->spi->dev,
    "Transceiver woken up from Power-Off by GPIO Activity\n"
   );
   break;
  case 4:
   dev_notice(
    &priv->spi->dev,
    "Transceiver woken up from Standby by Sleep Timer Time-Out\n"
   );
   break;
  case 5:
   dev_notice(
    &priv->spi->dev,
    "Transceiver woken up from Standby by GPIO Activity\n"
   );
   break;
  case 6:
   dev_notice(
    &priv->spi->dev,
    "Sleep-Timer Time-Out in Active Mode\n"
   );
   break;
  default:
   dev_warn(&priv->spi->dev, "Wakeup reason unknown\n");
   break;
  }
  complete(&priv->ca8210_is_awake);
 }

finish:;
}
