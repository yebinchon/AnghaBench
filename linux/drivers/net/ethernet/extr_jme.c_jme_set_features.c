
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct jme_adapter {int rxmcs_lock; int reg_rxmcs; } ;
typedef int netdev_features_t ;


 int JME_RXMCS ;
 int NETIF_F_RXCSUM ;
 int RXMCS_CHECKSUM ;
 int jwrite32 (struct jme_adapter*,int ,int ) ;
 struct jme_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
jme_set_features(struct net_device *netdev, netdev_features_t features)
{
 struct jme_adapter *jme = netdev_priv(netdev);

 spin_lock_bh(&jme->rxmcs_lock);
 if (features & NETIF_F_RXCSUM)
  jme->reg_rxmcs |= RXMCS_CHECKSUM;
 else
  jme->reg_rxmcs &= ~RXMCS_CHECKSUM;
 jwrite32(jme, JME_RXMCS, jme->reg_rxmcs);
 spin_unlock_bh(&jme->rxmcs_lock);

 return 0;
}
