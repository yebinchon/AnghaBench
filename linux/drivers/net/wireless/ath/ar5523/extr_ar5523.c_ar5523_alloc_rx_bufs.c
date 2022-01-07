
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar5523_rx_data {int list; int urb; struct ar5523* ar; } ;
struct ar5523 {int rx_data_free_cnt; int rx_data_free; struct ar5523_rx_data* rx_data; } ;


 int AR5523_RX_DATA_COUNT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ar5523_free_rx_bufs (struct ar5523*) ;
 int atomic_inc (int *) ;
 int list_add_tail (int *,int *) ;
 int usb_alloc_urb (int ,int ) ;

__attribute__((used)) static int ar5523_alloc_rx_bufs(struct ar5523 *ar)
{
 int i;

 for (i = 0; i < AR5523_RX_DATA_COUNT; i++) {
  struct ar5523_rx_data *data = &ar->rx_data[i];

  data->ar = ar;
  data->urb = usb_alloc_urb(0, GFP_KERNEL);
  if (!data->urb)
   goto err;
  list_add_tail(&data->list, &ar->rx_data_free);
  atomic_inc(&ar->rx_data_free_cnt);
 }
 return 0;

err:
 ar5523_free_rx_bufs(ar);
 return -ENOMEM;
}
