
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct htc_target {struct htc_endpoint* endpoint; } ;
struct htc_packet {size_t endpoint; int list; } ;
struct htc_endpoint {int dummy; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 int do_send_completion (struct htc_endpoint*,struct list_head*) ;
 int list_add_tail (int *,struct list_head*) ;
 int restore_tx_packet (struct htc_packet*) ;

__attribute__((used)) static void send_packet_completion(struct htc_target *target,
       struct htc_packet *packet)
{
 struct htc_endpoint *ep = &target->endpoint[packet->endpoint];
 struct list_head container;

 restore_tx_packet(packet);
 INIT_LIST_HEAD(&container);
 list_add_tail(&packet->list, &container);


 do_send_completion(ep, &container);
}
