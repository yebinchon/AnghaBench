
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dmfe_board_info {scalar_t__ rx_avail_cnt; TYPE_1__* rx_ready_ptr; } ;
struct TYPE_2__ {struct TYPE_2__* next_rx_desc; int rx_skb_ptr; } ;


 int DMFE_DBUG (int ,char*,int ) ;
 int dev_kfree_skb (int ) ;

__attribute__((used)) static void dmfe_free_rxbuffer(struct dmfe_board_info * db)
{
 DMFE_DBUG(0, "dmfe_free_rxbuffer()", 0);


 while (db->rx_avail_cnt) {
  dev_kfree_skb(db->rx_ready_ptr->rx_skb_ptr);
  db->rx_ready_ptr = db->rx_ready_ptr->next_rx_desc;
  db->rx_avail_cnt--;
 }
}
