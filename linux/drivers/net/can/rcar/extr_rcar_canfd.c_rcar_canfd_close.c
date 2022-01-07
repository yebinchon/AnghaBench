
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_canfd_global {int can_clk; } ;
struct rcar_canfd_channel {int napi; struct rcar_canfd_global* gpriv; } ;
struct net_device {int dummy; } ;


 int CAN_LED_EVENT_STOP ;
 int can_led_event (struct net_device*,int ) ;
 int clk_disable_unprepare (int ) ;
 int close_candev (struct net_device*) ;
 int napi_disable (int *) ;
 struct rcar_canfd_channel* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int rcar_canfd_stop (struct net_device*) ;

__attribute__((used)) static int rcar_canfd_close(struct net_device *ndev)
{
 struct rcar_canfd_channel *priv = netdev_priv(ndev);
 struct rcar_canfd_global *gpriv = priv->gpriv;

 netif_stop_queue(ndev);
 rcar_canfd_stop(ndev);
 napi_disable(&priv->napi);
 clk_disable_unprepare(gpriv->can_clk);
 close_candev(ndev);
 can_led_event(ndev, CAN_LED_EVENT_STOP);
 return 0;
}
