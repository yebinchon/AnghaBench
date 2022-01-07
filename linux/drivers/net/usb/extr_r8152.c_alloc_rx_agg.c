
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rx_agg {int page; int info_list; int list; struct r8152* context; int urb; int buffer; } ;
struct r8152 {int rx_count; int rx_lock; int rx_info; int rx_buf_sz; struct net_device* netdev; } ;
struct TYPE_2__ {scalar_t__ parent; } ;
struct net_device {TYPE_1__ dev; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 int __GFP_COMP ;
 int __free_pages (int ,unsigned int) ;
 int alloc_pages (int,unsigned int) ;
 int atomic_inc (int *) ;
 int dev_to_node (scalar_t__) ;
 unsigned int get_order (int ) ;
 int kfree (struct rx_agg*) ;
 struct rx_agg* kmalloc_node (int,int,int) ;
 int list_add_tail (int *,int *) ;
 int page_address (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_alloc_urb (int ,int) ;

__attribute__((used)) static struct rx_agg *alloc_rx_agg(struct r8152 *tp, gfp_t mflags)
{
 struct net_device *netdev = tp->netdev;
 int node = netdev->dev.parent ? dev_to_node(netdev->dev.parent) : -1;
 unsigned int order = get_order(tp->rx_buf_sz);
 struct rx_agg *rx_agg;
 unsigned long flags;

 rx_agg = kmalloc_node(sizeof(*rx_agg), mflags, node);
 if (!rx_agg)
  return ((void*)0);

 rx_agg->page = alloc_pages(mflags | __GFP_COMP, order);
 if (!rx_agg->page)
  goto free_rx;

 rx_agg->buffer = page_address(rx_agg->page);

 rx_agg->urb = usb_alloc_urb(0, mflags);
 if (!rx_agg->urb)
  goto free_buf;

 rx_agg->context = tp;

 INIT_LIST_HEAD(&rx_agg->list);
 INIT_LIST_HEAD(&rx_agg->info_list);
 spin_lock_irqsave(&tp->rx_lock, flags);
 list_add_tail(&rx_agg->info_list, &tp->rx_info);
 spin_unlock_irqrestore(&tp->rx_lock, flags);

 atomic_inc(&tp->rx_count);

 return rx_agg;

free_buf:
 __free_pages(rx_agg->page, order);
free_rx:
 kfree(rx_agg);
 return ((void*)0);
}
