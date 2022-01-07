
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peak_canfd_priv {int dummy; } ;
struct net_device {int dummy; } ;
typedef enum can_mode { ____Placeholder_can_mode } can_mode ;



 int EOPNOTSUPP ;
 struct peak_canfd_priv* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int peak_canfd_start (struct peak_canfd_priv*) ;

__attribute__((used)) static int peak_canfd_set_mode(struct net_device *ndev, enum can_mode mode)
{
 struct peak_canfd_priv *priv = netdev_priv(ndev);

 switch (mode) {
 case 128:
  peak_canfd_start(priv);
  netif_wake_queue(ndev);
  break;
 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
