
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htc_target {int dummy; } ;
struct htc_packet {int dummy; } ;


 int htc_free_txctrl_packet (struct htc_target*,struct htc_packet*) ;

__attribute__((used)) static void htc_txctrl_complete(struct htc_target *target,
    struct htc_packet *packet)
{
 htc_free_txctrl_packet(target, packet);
}
