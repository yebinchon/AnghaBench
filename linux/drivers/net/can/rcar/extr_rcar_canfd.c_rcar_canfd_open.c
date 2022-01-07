
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_canfd_global {int can_clk; } ;
struct rcar_canfd_channel {int napi; struct rcar_canfd_global* gpriv; } ;
struct net_device {int dummy; } ;


 int CAN_LED_EVENT_OPEN ;
 int can_led_event (struct net_device*,int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int close_candev (struct net_device*) ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct rcar_canfd_channel* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int open_candev (struct net_device*) ;
 int rcar_canfd_start (struct net_device*) ;

__attribute__((used)) static int rcar_canfd_open(struct net_device *ndev)
{
 struct rcar_canfd_channel *priv = netdev_priv(ndev);
 struct rcar_canfd_global *gpriv = priv->gpriv;
 int err;


 err = clk_prepare_enable(gpriv->can_clk);
 if (err) {
  netdev_err(ndev, "failed to enable CAN clock, error %d\n", err);
  goto out_clock;
 }

 err = open_candev(ndev);
 if (err) {
  netdev_err(ndev, "open_candev() failed, error %d\n", err);
  goto out_can_clock;
 }

 napi_enable(&priv->napi);
 err = rcar_canfd_start(ndev);
 if (err)
  goto out_close;
 netif_start_queue(ndev);
 can_led_event(ndev, CAN_LED_EVENT_OPEN);
 return 0;
out_close:
 napi_disable(&priv->napi);
 close_candev(ndev);
out_can_clock:
 clk_disable_unprepare(gpriv->can_clk);
out_clock:
 return err;
}
