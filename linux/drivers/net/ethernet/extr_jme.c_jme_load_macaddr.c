
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dev_addr; } ;
struct jme_adapter {int macaddr_lock; } ;


 int ETH_ALEN ;
 int JME_RXUMA_HI ;
 int JME_RXUMA_LO ;
 int jread32 (struct jme_adapter*,int ) ;
 int memcpy (int ,unsigned char*,int) ;
 struct jme_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
jme_load_macaddr(struct net_device *netdev)
{
 struct jme_adapter *jme = netdev_priv(netdev);
 unsigned char macaddr[ETH_ALEN];
 u32 val;

 spin_lock_bh(&jme->macaddr_lock);
 val = jread32(jme, JME_RXUMA_LO);
 macaddr[0] = (val >> 0) & 0xFF;
 macaddr[1] = (val >> 8) & 0xFF;
 macaddr[2] = (val >> 16) & 0xFF;
 macaddr[3] = (val >> 24) & 0xFF;
 val = jread32(jme, JME_RXUMA_HI);
 macaddr[4] = (val >> 0) & 0xFF;
 macaddr[5] = (val >> 8) & 0xFF;
 memcpy(netdev->dev_addr, macaddr, ETH_ALEN);
 spin_unlock_bh(&jme->macaddr_lock);
}
