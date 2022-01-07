
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; } ;
struct m_can_classdev {int * tx_wq; int * tx_skb; scalar_t__ is_peripheral; int napi; } ;


 int CAN_LED_EVENT_STOP ;
 int can_led_event (struct net_device*,int ) ;
 int close_candev (struct net_device*) ;
 int destroy_workqueue (int *) ;
 int free_irq (int ,struct net_device*) ;
 int m_can_clk_stop (struct m_can_classdev*) ;
 int m_can_stop (struct net_device*) ;
 int napi_disable (int *) ;
 struct m_can_classdev* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int m_can_close(struct net_device *dev)
{
 struct m_can_classdev *cdev = netdev_priv(dev);

 netif_stop_queue(dev);

 if (!cdev->is_peripheral)
  napi_disable(&cdev->napi);

 m_can_stop(dev);
 m_can_clk_stop(cdev);
 free_irq(dev->irq, dev);

 if (cdev->is_peripheral) {
  cdev->tx_skb = ((void*)0);
  destroy_workqueue(cdev->tx_wq);
  cdev->tx_wq = ((void*)0);
 }

 close_candev(dev);
 can_led_event(dev, CAN_LED_EVENT_STOP);

 return 0;
}
