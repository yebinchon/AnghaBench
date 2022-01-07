
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gfar_private {int state; } ;


 int GFAR_RESETTING ;
 int clear_bit_unlock (int ,int *) ;
 int cpu_relax () ;
 struct gfar_private* netdev_priv (struct net_device*) ;
 int startup_gfar (struct net_device*) ;
 int stop_gfar (struct net_device*) ;
 scalar_t__ test_and_set_bit_lock (int ,int *) ;

__attribute__((used)) static void reset_gfar(struct net_device *ndev)
{
 struct gfar_private *priv = netdev_priv(ndev);

 while (test_and_set_bit_lock(GFAR_RESETTING, &priv->state))
  cpu_relax();

 stop_gfar(ndev);
 startup_gfar(ndev);

 clear_bit_unlock(GFAR_RESETTING, &priv->state);
}
