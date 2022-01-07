
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_hecc_priv {int offload; } ;
struct net_device {int irq; int name; } ;


 int CAN_LED_EVENT_OPEN ;
 int IRQF_SHARED ;
 int can_led_event (struct net_device*,int ) ;
 int can_rx_offload_enable (int *) ;
 int free_irq (int ,struct net_device*) ;
 int netdev_err (struct net_device*,char*,...) ;
 struct ti_hecc_priv* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int open_candev (struct net_device*) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 int ti_hecc_interrupt ;
 int ti_hecc_start (struct net_device*) ;
 int ti_hecc_transceiver_switch (struct ti_hecc_priv*,int) ;

__attribute__((used)) static int ti_hecc_open(struct net_device *ndev)
{
 struct ti_hecc_priv *priv = netdev_priv(ndev);
 int err;

 err = request_irq(ndev->irq, ti_hecc_interrupt, IRQF_SHARED,
     ndev->name, ndev);
 if (err) {
  netdev_err(ndev, "error requesting interrupt\n");
  return err;
 }

 ti_hecc_transceiver_switch(priv, 1);


 err = open_candev(ndev);
 if (err) {
  netdev_err(ndev, "open_candev() failed %d\n", err);
  ti_hecc_transceiver_switch(priv, 0);
  free_irq(ndev->irq, ndev);
  return err;
 }

 can_led_event(ndev, CAN_LED_EVENT_OPEN);

 ti_hecc_start(ndev);
 can_rx_offload_enable(&priv->offload);
 netif_start_queue(ndev);

 return 0;
}
