
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {struct s_fpmc* table; } ;
struct TYPE_5__ {TYPE_1__ mc; } ;
struct TYPE_6__ {TYPE_2__ fp; } ;
struct s_smc {TYPE_3__ hw; } ;
struct s_fpmc {int a; int n; } ;
struct fddi_addr {int * a; } ;


 int FPMAX_MULTICAST ;
 int bitrev8 (int ) ;
 int ether_addr_equal (char*,char*) ;

__attribute__((used)) static struct s_fpmc* mac_get_mc_table(struct s_smc *smc,
           struct fddi_addr *user,
           struct fddi_addr *own,
           int del, int can)
{
 struct s_fpmc *tb ;
 struct s_fpmc *slot ;
 u_char *p ;
 int i ;




 *own = *user ;
 if (can) {
  p = own->a ;
  for (i = 0 ; i < 6 ; i++, p++)
   *p = bitrev8(*p);
 }
 slot = ((void*)0);
 for (i = 0, tb = smc->hw.fp.mc.table ; i < FPMAX_MULTICAST ; i++, tb++){
  if (!tb->n) {
   if (!del && !slot)
    slot = tb ;
   continue ;
  }
  if (!ether_addr_equal((char *)&tb->a, (char *)own))
   continue ;
  return tb;
 }
 return slot;
}
