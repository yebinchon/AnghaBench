
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uli526x_board_info {scalar_t__ rx_avail_cnt; TYPE_1__* rx_ready_ptr; } ;
struct TYPE_2__ {struct TYPE_2__* next_rx_desc; int rx_skb_ptr; } ;


 int ULI526X_DBUG (int ,char*,int ) ;
 int dev_kfree_skb (int ) ;

__attribute__((used)) static void uli526x_free_rxbuffer(struct uli526x_board_info * db)
{
 ULI526X_DBUG(0, "uli526x_free_rxbuffer()", 0);


 while (db->rx_avail_cnt) {
  dev_kfree_skb(db->rx_ready_ptr->rx_skb_ptr);
  db->rx_ready_ptr = db->rx_ready_ptr->next_rx_desc;
  db->rx_avail_cnt--;
 }
}
