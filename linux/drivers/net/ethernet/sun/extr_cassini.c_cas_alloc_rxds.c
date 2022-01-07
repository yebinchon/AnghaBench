
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cas {int dummy; } ;


 int N_RX_DESC_RINGS ;
 scalar_t__ cas_alloc_rx_desc (struct cas*,int) ;
 int cas_free_rxds (struct cas*) ;

__attribute__((used)) static int cas_alloc_rxds(struct cas *cp)
{
 int i;

 for (i = 0; i < N_RX_DESC_RINGS; i++) {
  if (cas_alloc_rx_desc(cp, i) < 0) {
   cas_free_rxds(cp);
   return -1;
  }
 }
 return 0;
}
