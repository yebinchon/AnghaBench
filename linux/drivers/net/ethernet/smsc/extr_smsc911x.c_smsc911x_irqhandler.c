
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct smsc911x_data {int software_irq_signal; int napi; scalar_t__ multicast_update_pending; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int FIFO_INT ;
 int FIFO_INT_TX_AVAIL_LEVEL_ ;
 int INT_EN ;
 int INT_EN_RSFL_EN_ ;
 int INT_EN_SW_INT_EN_ ;
 int INT_STS ;
 int INT_STS_RSFL_ ;
 int INT_STS_RXE_ ;
 int INT_STS_RXSTOP_INT_ ;
 int INT_STS_SW_INT_ ;
 int INT_STS_TDFA_ ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SMSC_TRACE (struct smsc911x_data*,int ,char*) ;
 int SMSC_WARN (struct smsc911x_data*,int ,char*) ;
 int __napi_schedule (int *) ;
 int intr ;
 scalar_t__ likely (int) ;
 int napi_schedule_prep (int *) ;
 struct smsc911x_data* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int rx_err ;
 int smp_wmb () ;
 int smsc911x_reg_read (struct smsc911x_data*,int ) ;
 int smsc911x_reg_write (struct smsc911x_data*,int ,int) ;
 int smsc911x_rx_multicast_update_workaround (struct smsc911x_data*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t smsc911x_irqhandler(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct smsc911x_data *pdata = netdev_priv(dev);
 u32 intsts = smsc911x_reg_read(pdata, INT_STS);
 u32 inten = smsc911x_reg_read(pdata, INT_EN);
 int serviced = IRQ_NONE;
 u32 temp;

 if (unlikely(intsts & inten & INT_STS_SW_INT_)) {
  temp = smsc911x_reg_read(pdata, INT_EN);
  temp &= (~INT_EN_SW_INT_EN_);
  smsc911x_reg_write(pdata, INT_EN, temp);
  smsc911x_reg_write(pdata, INT_STS, INT_STS_SW_INT_);
  pdata->software_irq_signal = 1;
  smp_wmb();
  serviced = IRQ_HANDLED;
 }

 if (unlikely(intsts & inten & INT_STS_RXSTOP_INT_)) {


  SMSC_TRACE(pdata, intr, "RX Stop interrupt");
  smsc911x_reg_write(pdata, INT_STS, INT_STS_RXSTOP_INT_);
  if (pdata->multicast_update_pending)
   smsc911x_rx_multicast_update_workaround(pdata);
  serviced = IRQ_HANDLED;
 }

 if (intsts & inten & INT_STS_TDFA_) {
  temp = smsc911x_reg_read(pdata, FIFO_INT);
  temp |= FIFO_INT_TX_AVAIL_LEVEL_;
  smsc911x_reg_write(pdata, FIFO_INT, temp);
  smsc911x_reg_write(pdata, INT_STS, INT_STS_TDFA_);
  netif_wake_queue(dev);
  serviced = IRQ_HANDLED;
 }

 if (unlikely(intsts & inten & INT_STS_RXE_)) {
  SMSC_TRACE(pdata, intr, "RX Error interrupt");
  smsc911x_reg_write(pdata, INT_STS, INT_STS_RXE_);
  serviced = IRQ_HANDLED;
 }

 if (likely(intsts & inten & INT_STS_RSFL_)) {
  if (likely(napi_schedule_prep(&pdata->napi))) {

   temp = smsc911x_reg_read(pdata, INT_EN);
   temp &= (~INT_EN_RSFL_EN_);
   smsc911x_reg_write(pdata, INT_EN, temp);

   __napi_schedule(&pdata->napi);
  } else {
   SMSC_WARN(pdata, rx_err, "napi_schedule_prep failed");
  }
  serviced = IRQ_HANDLED;
 }

 return serviced;
}
