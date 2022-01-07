
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct bnad {int conf_mutex; int bna_lock; int active_vlans; TYPE_1__* rx_info; } ;
typedef int __be16 ;
struct TYPE_2__ {int rx; } ;


 int bna_rx_vlan_add (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct bnad* netdev_priv (struct net_device*) ;
 int set_bit (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
bnad_vlan_rx_add_vid(struct net_device *netdev, __be16 proto, u16 vid)
{
 struct bnad *bnad = netdev_priv(netdev);
 unsigned long flags;

 if (!bnad->rx_info[0].rx)
  return 0;

 mutex_lock(&bnad->conf_mutex);

 spin_lock_irqsave(&bnad->bna_lock, flags);
 bna_rx_vlan_add(bnad->rx_info[0].rx, vid);
 set_bit(vid, bnad->active_vlans);
 spin_unlock_irqrestore(&bnad->bna_lock, flags);

 mutex_unlock(&bnad->conf_mutex);

 return 0;
}
