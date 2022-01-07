
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htc_target {int dummy; } ;
struct htc_packet {int dummy; } ;


 struct htc_packet* build_htc_txctrl_packet () ;

__attribute__((used)) static struct htc_packet *htc_alloc_txctrl_packet(struct htc_target *target)
{
 return build_htc_txctrl_packet();
}
