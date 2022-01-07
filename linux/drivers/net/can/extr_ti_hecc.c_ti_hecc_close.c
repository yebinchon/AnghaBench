
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_hecc_priv {int offload; } ;
struct net_device {int irq; } ;


 int CAN_LED_EVENT_STOP ;
 int can_led_event (struct net_device*,int ) ;
 int can_rx_offload_disable (int *) ;
 int close_candev (struct net_device*) ;
 int free_irq (int ,struct net_device*) ;
 struct ti_hecc_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int ti_hecc_stop (struct net_device*) ;
 int ti_hecc_transceiver_switch (struct ti_hecc_priv*,int ) ;

__attribute__((used)) static int ti_hecc_close(struct net_device *ndev)
{
 struct ti_hecc_priv *priv = netdev_priv(ndev);

 netif_stop_queue(ndev);
 can_rx_offload_disable(&priv->offload);
 ti_hecc_stop(ndev);
 free_irq(ndev->irq, ndev);
 close_candev(ndev);
 ti_hecc_transceiver_switch(priv, 0);

 can_led_event(ndev, CAN_LED_EVENT_STOP);

 return 0;
}
