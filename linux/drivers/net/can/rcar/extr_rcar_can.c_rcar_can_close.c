
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_can_priv {int clk; int can_clk; int napi; } ;
struct net_device {int irq; } ;


 int CAN_LED_EVENT_STOP ;
 int can_led_event (struct net_device*,int ) ;
 int clk_disable_unprepare (int ) ;
 int close_candev (struct net_device*) ;
 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 struct rcar_can_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int rcar_can_stop (struct net_device*) ;

__attribute__((used)) static int rcar_can_close(struct net_device *ndev)
{
 struct rcar_can_priv *priv = netdev_priv(ndev);

 netif_stop_queue(ndev);
 rcar_can_stop(ndev);
 free_irq(ndev->irq, ndev);
 napi_disable(&priv->napi);
 clk_disable_unprepare(priv->can_clk);
 clk_disable_unprepare(priv->clk);
 close_candev(ndev);
 can_led_event(ndev, CAN_LED_EVENT_STOP);
 return 0;
}
