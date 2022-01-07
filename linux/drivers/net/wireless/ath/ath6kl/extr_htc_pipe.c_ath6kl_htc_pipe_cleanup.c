
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htc_target {struct htc_target* dev; } ;
struct htc_packet {struct htc_packet* dev; } ;


 struct htc_target* alloc_htc_packet_container (struct htc_target*) ;
 int kfree (struct htc_target*) ;

__attribute__((used)) static void ath6kl_htc_pipe_cleanup(struct htc_target *target)
{
 struct htc_packet *packet;

 while (1) {
  packet = alloc_htc_packet_container(target);
  if (packet == ((void*)0))
   break;
  kfree(packet);
 }

 kfree(target->dev);


 kfree(target);
}
