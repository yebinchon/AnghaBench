
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct smsc911x_data {int generation; unsigned int idrev; int napi; int mac_lock; TYPE_1__ config; int * ioaddr; int dev_lock; } ;
struct net_device {int * ethtool_ops; int * netdev_ops; int flags; int irq; } ;


 int BYTE_TEST ;
 int ENODEV ;
 int ID_REV ;
 int IFF_MULTICAST ;
 int PMT_CTRL ;
 unsigned int PMT_CTRL_READY_ ;
 int SMSC911X_SAVE_MAC_ADDRESS ;
 int SMSC_NAPI_WEIGHT ;
 int SMSC_TRACE (struct smsc911x_data*,int ,char*,...) ;
 int SMSC_WARN (struct smsc911x_data*,int ,char*,...) ;
 int WORD_SWAP ;
 int drv ;
 int netdev_err (struct net_device*,char*) ;
 struct smsc911x_data* netdev_priv (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int ) ;
 int probe ;
 int smsc911x_ethtool_ops ;
 int smsc911x_netdev_ops ;
 scalar_t__ smsc911x_phy_reset (struct smsc911x_data*) ;
 int smsc911x_poll ;
 int smsc911x_read_mac_address (struct net_device*) ;
 unsigned int smsc911x_reg_read (struct smsc911x_data*,int ) ;
 int smsc911x_reg_write (struct smsc911x_data*,int ,int) ;
 scalar_t__ smsc911x_soft_reset (struct smsc911x_data*) ;
 int spin_lock_init (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 unsigned int swahw32 (unsigned int) ;
 int udelay (int) ;

__attribute__((used)) static int smsc911x_init(struct net_device *dev)
{
 struct smsc911x_data *pdata = netdev_priv(dev);
 unsigned int byte_test, mask;
 unsigned int to = 100;

 SMSC_TRACE(pdata, probe, "Driver Parameters:");
 SMSC_TRACE(pdata, probe, "LAN base: 0x%08lX",
     (unsigned long)pdata->ioaddr);
 SMSC_TRACE(pdata, probe, "IRQ: %d", dev->irq);
 SMSC_TRACE(pdata, probe, "PHY will be autodetected.");

 spin_lock_init(&pdata->dev_lock);
 spin_lock_init(&pdata->mac_lock);

 if (pdata->ioaddr == ((void*)0)) {
  SMSC_WARN(pdata, probe, "pdata->ioaddr: 0x00000000");
  return -ENODEV;
 }
 mask = PMT_CTRL_READY_ | swahw32(PMT_CTRL_READY_);
 while (!(smsc911x_reg_read(pdata, PMT_CTRL) & mask) && --to)
  udelay(1000);

 if (to == 0) {
  netdev_err(dev, "Device not READY in 100ms aborting\n");
  return -ENODEV;
 }


 byte_test = smsc911x_reg_read(pdata, BYTE_TEST);
 SMSC_TRACE(pdata, probe, "BYTE_TEST: 0x%08X", byte_test);
 if (byte_test == 0x43218765) {
  SMSC_TRACE(pdata, probe, "BYTE_TEST looks swapped, "
      "applying WORD_SWAP");
  smsc911x_reg_write(pdata, WORD_SWAP, 0xffffffff);



  byte_test = smsc911x_reg_read(pdata, BYTE_TEST);

  byte_test = smsc911x_reg_read(pdata, BYTE_TEST);
 }

 if (byte_test != 0x87654321) {
  SMSC_WARN(pdata, drv, "BYTE_TEST: 0x%08X", byte_test);
  if (((byte_test >> 16) & 0xFFFF) == (byte_test & 0xFFFF)) {
   SMSC_WARN(pdata, probe,
      "top 16 bits equal to bottom 16 bits");
   SMSC_TRACE(pdata, probe,
       "This may mean the chip is set "
       "for 32 bit while the bus is reading 16 bit");
  }
  return -ENODEV;
 }


 pdata->generation = 0;

 pdata->idrev = smsc911x_reg_read(pdata, ID_REV);
 switch (pdata->idrev & 0xFFFF0000) {
 case 137:
 case 138:
 case 139:
 case 140:
 case 141:

  pdata->generation = pdata->idrev & 0x0000FFFF;
  break;

 case 131:
 case 132:
 case 133:
 case 134:

  pdata->generation = 3;
  break;

 case 136:
 case 135:
 case 130:
 case 129:
 case 128:

  pdata->generation = 4;
  break;

 default:
  SMSC_WARN(pdata, probe, "LAN911x not identified, idrev: 0x%08X",
     pdata->idrev);
  return -ENODEV;
 }

 SMSC_TRACE(pdata, probe,
     "LAN911x identified, idrev: 0x%08X, generation: %d",
     pdata->idrev, pdata->generation);

 if (pdata->generation == 0)
  SMSC_WARN(pdata, probe,
     "This driver is not intended for this chip revision");




 if (pdata->config.flags & SMSC911X_SAVE_MAC_ADDRESS) {
  spin_lock_irq(&pdata->mac_lock);
  smsc911x_read_mac_address(dev);
  spin_unlock_irq(&pdata->mac_lock);
 }


 if (smsc911x_phy_reset(pdata) || smsc911x_soft_reset(pdata))
  return -ENODEV;

 dev->flags |= IFF_MULTICAST;
 netif_napi_add(dev, &pdata->napi, smsc911x_poll, SMSC_NAPI_WEIGHT);
 dev->netdev_ops = &smsc911x_netdev_ops;
 dev->ethtool_ops = &smsc911x_ethtool_ops;

 return 0;
}
