
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_4__ {struct htc_packet* htc_packet_pool; } ;
struct htc_target {int rx_lock; TYPE_2__ pipe; } ;
struct TYPE_3__ {struct list_head* next; } ;
struct htc_packet {TYPE_1__ list; } ;


 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void free_htc_packet_container(struct htc_target *target,
          struct htc_packet *packet)
{
 struct list_head *lh;

 spin_lock_bh(&target->rx_lock);

 if (target->pipe.htc_packet_pool == ((void*)0)) {
  target->pipe.htc_packet_pool = packet;
  packet->list.next = ((void*)0);
 } else {
  lh = (struct list_head *) target->pipe.htc_packet_pool;
  packet->list.next = lh;
  target->pipe.htc_packet_pool = packet;
 }

 spin_unlock_bh(&target->rx_lock);
}
