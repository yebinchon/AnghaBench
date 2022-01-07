
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct alx_priv {int dummy; } ;


 int alx_schedule_reset (struct alx_priv*) ;
 struct alx_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void alx_tx_timeout(struct net_device *dev)
{
 struct alx_priv *alx = netdev_priv(dev);

 alx_schedule_reset(alx);
}
