
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; int irq; } ;
struct ifi_canfd_priv {int napi; } ;


 int CAN_LED_EVENT_OPEN ;
 int IRQF_SHARED ;
 int can_led_event (struct net_device*,int ) ;
 int close_candev (struct net_device*) ;
 int ifi_canfd_isr ;
 int ifi_canfd_start (struct net_device*) ;
 int napi_enable (int *) ;
 int netdev_err (struct net_device*,char*) ;
 struct ifi_canfd_priv* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int open_candev (struct net_device*) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;

__attribute__((used)) static int ifi_canfd_open(struct net_device *ndev)
{
 struct ifi_canfd_priv *priv = netdev_priv(ndev);
 int ret;

 ret = open_candev(ndev);
 if (ret) {
  netdev_err(ndev, "Failed to open CAN device\n");
  return ret;
 }


 ret = request_irq(ndev->irq, ifi_canfd_isr, IRQF_SHARED,
     ndev->name, ndev);
 if (ret < 0) {
  netdev_err(ndev, "Failed to request interrupt\n");
  goto err_irq;
 }

 ifi_canfd_start(ndev);

 can_led_event(ndev, CAN_LED_EVENT_OPEN);
 napi_enable(&priv->napi);
 netif_start_queue(ndev);

 return 0;
err_irq:
 close_candev(ndev);
 return ret;
}
