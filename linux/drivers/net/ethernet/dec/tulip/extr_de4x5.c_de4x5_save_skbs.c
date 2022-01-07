
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct net_device {int base_addr; } ;
struct TYPE_2__ {int save_cnt; } ;
struct de4x5_private {TYPE_1__ cache; } ;
typedef int s32 ;


 int DE4X5_RESTORE_STATE ;
 int DE4X5_SAVE_STATE ;
 int START_DE4X5 ;
 int STOP_DE4X5 ;
 int de4x5_cache_state (struct net_device*,int ) ;
 int de4x5_free_tx_buffs (struct net_device*) ;
 int de4x5_sw_reset (struct net_device*) ;
 int de4x5_tx (struct net_device*) ;
 struct de4x5_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
de4x5_save_skbs(struct net_device *dev)
{
    struct de4x5_private *lp = netdev_priv(dev);
    u_long iobase = dev->base_addr;
    s32 omr;

    if (!lp->cache.save_cnt) {
 STOP_DE4X5;
 de4x5_tx(dev);
 de4x5_free_tx_buffs(dev);
 de4x5_cache_state(dev, DE4X5_SAVE_STATE);
 de4x5_sw_reset(dev);
 de4x5_cache_state(dev, DE4X5_RESTORE_STATE);
 lp->cache.save_cnt++;
 START_DE4X5;
    }
}
