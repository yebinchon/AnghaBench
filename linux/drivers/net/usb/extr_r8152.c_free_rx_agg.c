
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx_agg {int page; int urb; int info_list; } ;
struct r8152 {int rx_count; } ;


 int atomic_dec (int *) ;
 int kfree (struct rx_agg*) ;
 int list_del (int *) ;
 int put_page (int ) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static void free_rx_agg(struct r8152 *tp, struct rx_agg *agg)
{
 list_del(&agg->info_list);

 usb_free_urb(agg->urb);
 put_page(agg->page);
 kfree(agg);

 atomic_dec(&tp->rx_count);
}
