
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct usbnet {int net; struct aqc111_data* driver_priv; } ;
struct urb {int actual_length; int* transfer_buffer; } ;
struct aqc111_data {int link_speed; int link; } ;


 int AQ_LS_MASK ;
 int AQ_SPEED_MASK ;
 int AQ_SPEED_SHIFT ;
 int EVENT_LINK_RESET ;
 int le64_to_cpus (int*) ;
 int netif_carrier_ok (int ) ;
 int usbnet_defer_kevent (struct usbnet*,int ) ;

__attribute__((used)) static void aqc111_status(struct usbnet *dev, struct urb *urb)
{
 struct aqc111_data *aqc111_data = dev->driver_priv;
 u64 *event_data = ((void*)0);
 int link = 0;

 if (urb->actual_length < sizeof(*event_data))
  return;

 event_data = urb->transfer_buffer;
 le64_to_cpus(event_data);

 if (*event_data & AQ_LS_MASK)
  link = 1;
 else
  link = 0;

 aqc111_data->link_speed = (*event_data & AQ_SPEED_MASK) >>
      AQ_SPEED_SHIFT;
 aqc111_data->link = link;

 if (netif_carrier_ok(dev->net) != link)
  usbnet_defer_kevent(dev, EVENT_LINK_RESET);
}
