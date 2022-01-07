
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peak_canfd_priv {int dummy; } ;
struct net_device {int dummy; } ;


 int close_candev (struct net_device*) ;
 struct peak_canfd_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int peak_canfd_stop (struct peak_canfd_priv*) ;

__attribute__((used)) static int peak_canfd_close(struct net_device *ndev)
{
 struct peak_canfd_priv *priv = netdev_priv(ndev);

 netif_stop_queue(ndev);
 peak_canfd_stop(priv);
 close_candev(ndev);

 return 0;
}
