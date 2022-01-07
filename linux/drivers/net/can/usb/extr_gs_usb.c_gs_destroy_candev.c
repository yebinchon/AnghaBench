
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_can {int netdev; int tx_submitted; } ;


 int free_candev (int ) ;
 int unregister_candev (int ) ;
 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static void gs_destroy_candev(struct gs_can *dev)
{
 unregister_candev(dev->netdev);
 usb_kill_anchored_urbs(&dev->tx_submitted);
 free_candev(dev->netdev);
}
