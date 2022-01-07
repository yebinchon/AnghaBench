
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ irq_type; scalar_t__ irq_polarity; } ;
struct smsc911x_data {int last_duplex; int last_carrier; int mac_lock; int napi; scalar_t__ ioaddr; scalar_t__ software_irq_signal; TYPE_1__ config; } ;
struct net_device {int * phydev; int irq; int name; int dev_addr; } ;


 int AFC_CFG ;
 int E2P_CMD ;
 unsigned int E2P_CMD_EPC_BUSY_ ;
 int ENODEV ;
 unsigned int ETH_P_8021Q ;
 int FIFO_INT ;
 unsigned int FIFO_INT_RX_STS_LEVEL_ ;
 unsigned int FIFO_INT_TX_AVAIL_LEVEL_ ;
 int GPIO_CFG ;
 int HW_CFG ;
 unsigned int HW_CFG_SF_ ;
 int HW_CFG_TX_FIF_SZ_ ;
 int INT_CFG ;
 int INT_CFG_IRQ_EN_ ;
 unsigned int INT_CFG_IRQ_POL_ ;
 unsigned int INT_CFG_IRQ_TYPE_ ;
 int INT_EN ;
 unsigned int INT_EN_RSFL_EN_ ;
 unsigned int INT_EN_RXSTOP_INT_EN_ ;
 unsigned int INT_EN_SW_INT_EN_ ;
 unsigned int INT_EN_TDFA_EN_ ;
 int IRQF_SHARED ;
 int MAC_CR ;
 unsigned int MAC_CR_HBDIS_ ;
 unsigned int MAC_CR_RXEN_ ;
 unsigned int MAC_CR_TXEN_ ;
 int NET_IP_ALIGN ;
 int RX_CFG ;
 int SMSC_TRACE (struct smsc911x_data*,int ,char*,...) ;
 int SMSC_WARN (struct smsc911x_data*,int ,char*,...) ;
 int TX_CFG ;
 unsigned int TX_CFG_TX_ON_ ;
 int VLAN1 ;
 int free_irq (int ,struct net_device*) ;
 int hw ;
 int ifup ;
 int irq_get_trigger_type (int ) ;
 int msleep (int) ;
 int napi_enable (int *) ;
 int netdev_info (struct net_device*,char*,unsigned long,int ) ;
 struct smsc911x_data* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,int ) ;
 int netif_start_queue (struct net_device*) ;
 int phy_disconnect (int *) ;
 int phy_start (int *) ;
 int probe ;
 int request_irq (int ,int ,int,int ,struct net_device*) ;
 int smp_wmb () ;
 int smsc911x_disable_irq_chip (struct net_device*) ;
 int smsc911x_irqhandler ;
 unsigned int smsc911x_mac_read (struct smsc911x_data*,int ) ;
 int smsc911x_mac_write (struct smsc911x_data*,int ,unsigned int) ;
 int smsc911x_mii_probe (struct net_device*) ;
 unsigned int smsc911x_reg_read (struct smsc911x_data*,int ) ;
 int smsc911x_reg_write (struct smsc911x_data*,int ,unsigned int) ;
 int smsc911x_set_hw_mac_address (struct smsc911x_data*,int ) ;
 int smsc911x_soft_reset (struct smsc911x_data*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int udelay (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int smsc911x_open(struct net_device *dev)
{
 struct smsc911x_data *pdata = netdev_priv(dev);
 unsigned int timeout;
 unsigned int temp;
 unsigned int intcfg;
 int retval;
 int irq_flags;


 if (!dev->phydev) {
  retval = smsc911x_mii_probe(dev);
  if (retval < 0) {
   SMSC_WARN(pdata, probe, "Error starting phy");
   goto out;
  }
 }


 retval = smsc911x_soft_reset(pdata);
 if (retval) {
  SMSC_WARN(pdata, hw, "soft reset failed");
  goto mii_free_out;
 }

 smsc911x_reg_write(pdata, HW_CFG, 0x00050000);
 smsc911x_reg_write(pdata, AFC_CFG, 0x006E3740);


 spin_lock_irq(&pdata->mac_lock);
 smsc911x_mac_write(pdata, VLAN1, ETH_P_8021Q);
 spin_unlock_irq(&pdata->mac_lock);


 timeout = 50;
 while ((smsc911x_reg_read(pdata, E2P_CMD) & E2P_CMD_EPC_BUSY_) &&
        --timeout) {
  udelay(10);
 }

 if (unlikely(timeout == 0))
  SMSC_WARN(pdata, ifup,
     "Timed out waiting for EEPROM busy bit to clear");

 smsc911x_reg_write(pdata, GPIO_CFG, 0x70070000);



 spin_lock_irq(&pdata->mac_lock);
 smsc911x_set_hw_mac_address(pdata, dev->dev_addr);
 spin_unlock_irq(&pdata->mac_lock);


 smsc911x_disable_irq_chip(dev);


 intcfg = ((10 << 24) | INT_CFG_IRQ_EN_);

 if (pdata->config.irq_polarity) {
  SMSC_TRACE(pdata, ifup, "irq polarity: active high");
  intcfg |= INT_CFG_IRQ_POL_;
 } else {
  SMSC_TRACE(pdata, ifup, "irq polarity: active low");
 }

 if (pdata->config.irq_type) {
  SMSC_TRACE(pdata, ifup, "irq type: push-pull");
  intcfg |= INT_CFG_IRQ_TYPE_;
 } else {
  SMSC_TRACE(pdata, ifup, "irq type: open drain");
 }

 smsc911x_reg_write(pdata, INT_CFG, intcfg);

 SMSC_TRACE(pdata, ifup, "Testing irq handler using IRQ %d", dev->irq);
 pdata->software_irq_signal = 0;
 smp_wmb();

 irq_flags = irq_get_trigger_type(dev->irq);
 retval = request_irq(dev->irq, smsc911x_irqhandler,
        irq_flags | IRQF_SHARED, dev->name, dev);
 if (retval) {
  SMSC_WARN(pdata, probe,
     "Unable to claim requested irq: %d", dev->irq);
  goto mii_free_out;
 }

 temp = smsc911x_reg_read(pdata, INT_EN);
 temp |= INT_EN_SW_INT_EN_;
 smsc911x_reg_write(pdata, INT_EN, temp);

 timeout = 1000;
 while (timeout--) {
  if (pdata->software_irq_signal)
   break;
  msleep(1);
 }

 if (!pdata->software_irq_signal) {
  netdev_warn(dev, "ISR failed signaling test (IRQ %d)\n",
       dev->irq);
  retval = -ENODEV;
  goto irq_stop_out;
 }
 SMSC_TRACE(pdata, ifup, "IRQ handler passed test using IRQ %d",
     dev->irq);

 netdev_info(dev, "SMSC911x/921x identified at %#08lx, IRQ: %d\n",
      (unsigned long)pdata->ioaddr, dev->irq);


 pdata->last_duplex = -1;
 pdata->last_carrier = -1;


 phy_start(dev->phydev);

 temp = smsc911x_reg_read(pdata, HW_CFG);

 temp &= (HW_CFG_TX_FIF_SZ_|0x00000FFF);
 temp |= HW_CFG_SF_;
 smsc911x_reg_write(pdata, HW_CFG, temp);

 temp = smsc911x_reg_read(pdata, FIFO_INT);
 temp |= FIFO_INT_TX_AVAIL_LEVEL_;
 temp &= ~(FIFO_INT_RX_STS_LEVEL_);
 smsc911x_reg_write(pdata, FIFO_INT, temp);


 smsc911x_reg_write(pdata, RX_CFG, (NET_IP_ALIGN << 8));


 napi_enable(&pdata->napi);

 temp = smsc911x_reg_read(pdata, INT_EN);
 temp |= (INT_EN_TDFA_EN_ | INT_EN_RSFL_EN_ | INT_EN_RXSTOP_INT_EN_);
 smsc911x_reg_write(pdata, INT_EN, temp);

 spin_lock_irq(&pdata->mac_lock);
 temp = smsc911x_mac_read(pdata, MAC_CR);
 temp |= (MAC_CR_TXEN_ | MAC_CR_RXEN_ | MAC_CR_HBDIS_);
 smsc911x_mac_write(pdata, MAC_CR, temp);
 spin_unlock_irq(&pdata->mac_lock);

 smsc911x_reg_write(pdata, TX_CFG, TX_CFG_TX_ON_);

 netif_start_queue(dev);
 return 0;

irq_stop_out:
 free_irq(dev->irq, dev);
mii_free_out:
 phy_disconnect(dev->phydev);
 dev->phydev = ((void*)0);
out:
 return retval;
}
