
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ar5523_rx_data {int urb; int list; } ;
struct TYPE_2__ {scalar_t__ next; } ;
struct ar5523 {TYPE_1__ rx_data_free; } ;


 int ar5523_cancel_rx_bufs (struct ar5523*) ;
 int list_del (int *) ;
 int list_empty (TYPE_1__*) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static void ar5523_free_rx_bufs(struct ar5523 *ar)
{
 struct ar5523_rx_data *data;

 ar5523_cancel_rx_bufs(ar);
 while (!list_empty(&ar->rx_data_free)) {
  data = (struct ar5523_rx_data *) ar->rx_data_free.next;
  list_del(&data->list);
  usb_free_urb(data->urb);
 }
}
