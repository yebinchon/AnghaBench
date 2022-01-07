
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wil_rx_buff {int id; int list; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {size_t size; struct wil_rx_buff* buff_arr; struct list_head free; struct list_head active; } ;
struct wil6210_priv {TYPE_1__ rx_buff_mgmt; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (struct list_head*) ;
 struct wil_rx_buff* kcalloc (size_t,int,int ) ;
 int list_add (int *,struct list_head*) ;

__attribute__((used)) static int wil_init_rx_buff_arr(struct wil6210_priv *wil,
    size_t size)
{
 struct wil_rx_buff *buff_arr;
 struct list_head *active = &wil->rx_buff_mgmt.active;
 struct list_head *free = &wil->rx_buff_mgmt.free;
 int i;

 wil->rx_buff_mgmt.buff_arr = kcalloc(size + 1,
          sizeof(struct wil_rx_buff),
          GFP_KERNEL);
 if (!wil->rx_buff_mgmt.buff_arr)
  return -ENOMEM;


 INIT_LIST_HEAD(active);
 INIT_LIST_HEAD(free);




 buff_arr = wil->rx_buff_mgmt.buff_arr;
 for (i = 1; i <= size; i++) {
  list_add(&buff_arr[i].list, free);
  buff_arr[i].id = i;
 }

 wil->rx_buff_mgmt.size = size + 1;

 return 0;
}
