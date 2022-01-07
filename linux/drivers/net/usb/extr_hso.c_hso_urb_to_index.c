
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int dummy; } ;
struct hso_serial {int num_rx_urbs; TYPE_1__* parent; struct urb** rx_urb; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int ,char*) ;

__attribute__((used)) static int hso_urb_to_index(struct hso_serial *serial, struct urb *urb)
{
 int idx;

 for (idx = 0; idx < serial->num_rx_urbs; idx++)
  if (serial->rx_urb[idx] == urb)
   return idx;
 dev_err(serial->parent->dev, "hso_urb_to_index failed\n");
 return -1;
}
