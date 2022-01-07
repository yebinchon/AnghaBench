
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar5523_rx_data {int list; } ;
struct ar5523 {int rx_data_list_lock; int rx_data_free; } ;


 int list_move (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ar5523_rx_data_put(struct ar5523 *ar,
    struct ar5523_rx_data *data)
{
 unsigned long flags;
 spin_lock_irqsave(&ar->rx_data_list_lock, flags);
 list_move(&data->list, &ar->rx_data_free);
 spin_unlock_irqrestore(&ar->rx_data_list_lock, flags);
}
