
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int wait; int net; int done; int txq; int rxq; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int ifdown ;
 int netif_dbg (struct usbnet*,int ,int ,char*,int) ;
 int remove_wait_queue (int *,int *) ;
 int set_current_state (int ) ;
 int unlink_urbs (struct usbnet*,int *) ;
 int wait ;
 int wait_skb_queue_empty (int *) ;

__attribute__((used)) static void usbnet_terminate_urbs(struct usbnet *dev)
{
 DECLARE_WAITQUEUE(wait, current);
 int temp;


 add_wait_queue(&dev->wait, &wait);
 set_current_state(TASK_UNINTERRUPTIBLE);
 temp = unlink_urbs(dev, &dev->txq) +
  unlink_urbs(dev, &dev->rxq);


 wait_skb_queue_empty(&dev->rxq);
 wait_skb_queue_empty(&dev->txq);
 wait_skb_queue_empty(&dev->done);
 netif_dbg(dev, ifdown, dev->net,
    "waited for %d urb completions\n", temp);
 set_current_state(TASK_RUNNING);
 remove_wait_queue(&dev->wait, &wait);
}
