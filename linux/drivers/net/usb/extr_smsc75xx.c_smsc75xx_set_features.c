
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int net; scalar_t__* data; } ;
struct smsc75xx_priv {int rfe_ctl; int rfe_ctl_lock; } ;
struct net_device {int dummy; } ;
typedef int netdev_features_t ;


 int NETIF_F_RXCSUM ;
 int RFE_CTL ;
 int RFE_CTL_IP_CKM ;
 int RFE_CTL_TCPUDP_CKM ;
 struct usbnet* netdev_priv (struct net_device*) ;
 int netdev_warn (int ,char*) ;
 int smsc75xx_write_reg (struct usbnet*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int smsc75xx_set_features(struct net_device *netdev,
 netdev_features_t features)
{
 struct usbnet *dev = netdev_priv(netdev);
 struct smsc75xx_priv *pdata = (struct smsc75xx_priv *)(dev->data[0]);
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&pdata->rfe_ctl_lock, flags);

 if (features & NETIF_F_RXCSUM)
  pdata->rfe_ctl |= RFE_CTL_TCPUDP_CKM | RFE_CTL_IP_CKM;
 else
  pdata->rfe_ctl &= ~(RFE_CTL_TCPUDP_CKM | RFE_CTL_IP_CKM);

 spin_unlock_irqrestore(&pdata->rfe_ctl_lock, flags);


 ret = smsc75xx_write_reg(dev, RFE_CTL, pdata->rfe_ctl);
 if (ret < 0) {
  netdev_warn(dev->net, "Error writing RFE_CTL\n");
  return ret;
 }
 return 0;
}
