
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * function; } ;
struct tlan_priv {TYPE_1__ timer; TYPE_1__ media_timer; } ;
struct net_device {scalar_t__ base_addr; } ;


 int TLAN_HC_AD_RST ;
 scalar_t__ TLAN_HOST_CMD ;
 int TLAN_RECORD ;
 int del_timer_sync (TYPE_1__*) ;
 struct tlan_priv* netdev_priv (struct net_device*) ;
 int outl (int ,scalar_t__) ;
 int tlan_read_and_clear_stats (struct net_device*,int ) ;
 int tlan_reset_adapter (struct net_device*) ;

__attribute__((used)) static void tlan_stop(struct net_device *dev)
{
 struct tlan_priv *priv = netdev_priv(dev);

 del_timer_sync(&priv->media_timer);
 tlan_read_and_clear_stats(dev, TLAN_RECORD);
 outl(TLAN_HC_AD_RST, dev->base_addr + TLAN_HOST_CMD);

 tlan_reset_adapter(dev);
 if (priv->timer.function != ((void*)0)) {
  del_timer_sync(&priv->timer);
  priv->timer.function = ((void*)0);
 }
}
