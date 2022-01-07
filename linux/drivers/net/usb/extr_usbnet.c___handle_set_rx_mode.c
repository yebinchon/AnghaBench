
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {int flags; TYPE_1__* driver_info; } ;
struct TYPE_2__ {int (* set_rx_mode ) (struct usbnet*) ;} ;


 int EVENT_SET_RX_MODE ;
 int clear_bit (int ,int *) ;
 int stub1 (struct usbnet*) ;

__attribute__((used)) static void __handle_set_rx_mode(struct usbnet *dev)
{
 if (dev->driver_info->set_rx_mode)
  (dev->driver_info->set_rx_mode)(dev);

 clear_bit(EVENT_SET_RX_MODE, &dev->flags);
}
