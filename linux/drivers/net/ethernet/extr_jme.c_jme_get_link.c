
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct jme_adapter {int dummy; } ;


 int JME_PHY_LINK ;
 int PHY_LINK_UP ;
 int jread32 (struct jme_adapter*,int ) ;
 struct jme_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32
jme_get_link(struct net_device *netdev)
{
 struct jme_adapter *jme = netdev_priv(netdev);
 return jread32(jme, JME_PHY_LINK) & PHY_LINK_UP;
}
