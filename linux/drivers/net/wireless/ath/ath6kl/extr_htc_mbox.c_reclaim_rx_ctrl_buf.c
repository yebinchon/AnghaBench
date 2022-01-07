
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htc_target {int htc_lock; int free_ctrl_rxbuf; } ;
struct htc_packet {int list; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void reclaim_rx_ctrl_buf(struct htc_target *target,
    struct htc_packet *packet)
{
 spin_lock_bh(&target->htc_lock);
 list_add_tail(&packet->list, &target->free_ctrl_rxbuf);
 spin_unlock_bh(&target->htc_lock);
}
