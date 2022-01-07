
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int mtu; } ;
struct gfar_private {int state; } ;


 int GFAR_RESETTING ;
 int IFF_UP ;
 int clear_bit_unlock (int ,int *) ;
 int cpu_relax () ;
 struct gfar_private* netdev_priv (struct net_device*) ;
 int startup_gfar (struct net_device*) ;
 int stop_gfar (struct net_device*) ;
 scalar_t__ test_and_set_bit_lock (int ,int *) ;

__attribute__((used)) static int gfar_change_mtu(struct net_device *dev, int new_mtu)
{
 struct gfar_private *priv = netdev_priv(dev);

 while (test_and_set_bit_lock(GFAR_RESETTING, &priv->state))
  cpu_relax();

 if (dev->flags & IFF_UP)
  stop_gfar(dev);

 dev->mtu = new_mtu;

 if (dev->flags & IFF_UP)
  startup_gfar(dev);

 clear_bit_unlock(GFAR_RESETTING, &priv->state);

 return 0;
}
