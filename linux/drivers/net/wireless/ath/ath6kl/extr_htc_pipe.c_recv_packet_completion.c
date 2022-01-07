
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct htc_target {int dummy; } ;
struct htc_packet {int list; } ;
struct htc_endpoint {int dummy; } ;


 int INIT_LIST_HEAD (struct list_head*) ;
 int do_recv_completion (struct htc_endpoint*,struct list_head*) ;
 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static void recv_packet_completion(struct htc_target *target,
       struct htc_endpoint *ep,
       struct htc_packet *packet)
{
 struct list_head container;
 INIT_LIST_HEAD(&container);
 list_add_tail(&packet->list, &container);


 do_recv_completion(ep, &container);
}
