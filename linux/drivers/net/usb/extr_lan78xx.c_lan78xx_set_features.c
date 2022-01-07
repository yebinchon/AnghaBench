
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct lan78xx_priv {int rfe_ctl; int rfe_ctl_lock; } ;
struct lan78xx_net {scalar_t__* data; } ;
typedef int netdev_features_t ;


 int NETIF_F_HW_VLAN_CTAG_FILTER ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_RXCSUM ;
 int RFE_CTL ;
 int RFE_CTL_ICMP_COE_ ;
 int RFE_CTL_IGMP_COE_ ;
 int RFE_CTL_IP_COE_ ;
 int RFE_CTL_TCPUDP_COE_ ;
 int RFE_CTL_VLAN_FILTER_ ;
 int RFE_CTL_VLAN_STRIP_ ;
 int lan78xx_write_reg (struct lan78xx_net*,int ,int) ;
 struct lan78xx_net* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int lan78xx_set_features(struct net_device *netdev,
    netdev_features_t features)
{
 struct lan78xx_net *dev = netdev_priv(netdev);
 struct lan78xx_priv *pdata = (struct lan78xx_priv *)(dev->data[0]);
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&pdata->rfe_ctl_lock, flags);

 if (features & NETIF_F_RXCSUM) {
  pdata->rfe_ctl |= RFE_CTL_TCPUDP_COE_ | RFE_CTL_IP_COE_;
  pdata->rfe_ctl |= RFE_CTL_ICMP_COE_ | RFE_CTL_IGMP_COE_;
 } else {
  pdata->rfe_ctl &= ~(RFE_CTL_TCPUDP_COE_ | RFE_CTL_IP_COE_);
  pdata->rfe_ctl &= ~(RFE_CTL_ICMP_COE_ | RFE_CTL_IGMP_COE_);
 }

 if (features & NETIF_F_HW_VLAN_CTAG_RX)
  pdata->rfe_ctl |= RFE_CTL_VLAN_STRIP_;
 else
  pdata->rfe_ctl &= ~RFE_CTL_VLAN_STRIP_;

 if (features & NETIF_F_HW_VLAN_CTAG_FILTER)
  pdata->rfe_ctl |= RFE_CTL_VLAN_FILTER_;
 else
  pdata->rfe_ctl &= ~RFE_CTL_VLAN_FILTER_;

 spin_unlock_irqrestore(&pdata->rfe_ctl_lock, flags);

 ret = lan78xx_write_reg(dev, RFE_CTL, pdata->rfe_ctl);

 return 0;
}
