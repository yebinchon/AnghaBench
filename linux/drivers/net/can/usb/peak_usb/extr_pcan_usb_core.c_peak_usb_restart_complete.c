
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct peak_usb_device {int netdev; TYPE_1__ can; } ;


 int CAN_STATE_ERROR_ACTIVE ;
 int netif_wake_queue (int ) ;

void peak_usb_restart_complete(struct peak_usb_device *dev)
{

 dev->can.state = CAN_STATE_ERROR_ACTIVE;


 netif_wake_queue(dev->netdev);
}
