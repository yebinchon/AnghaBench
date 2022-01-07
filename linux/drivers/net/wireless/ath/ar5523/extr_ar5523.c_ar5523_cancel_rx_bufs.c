
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ar5523_rx_data {int list; int urb; } ;
struct TYPE_2__ {scalar_t__ next; } ;
struct ar5523 {int rx_data_free_cnt; int rx_data_free; int rx_data_list_lock; TYPE_1__ rx_data_used; } ;


 int atomic_inc (int *) ;
 int list_empty (TYPE_1__*) ;
 int list_move (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void ar5523_cancel_rx_bufs(struct ar5523 *ar)
{
 struct ar5523_rx_data *data;
 unsigned long flags;

 do {
  spin_lock_irqsave(&ar->rx_data_list_lock, flags);
  if (!list_empty(&ar->rx_data_used))
   data = (struct ar5523_rx_data *) ar->rx_data_used.next;
  else
   data = ((void*)0);
  spin_unlock_irqrestore(&ar->rx_data_list_lock, flags);

  if (!data)
   break;

  usb_kill_urb(data->urb);
  list_move(&data->list, &ar->rx_data_free);
  atomic_inc(&ar->rx_data_free_cnt);
 } while (data);
}
