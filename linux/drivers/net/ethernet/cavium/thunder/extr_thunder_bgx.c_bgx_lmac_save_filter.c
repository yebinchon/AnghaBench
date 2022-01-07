
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u64 ;
struct lmac {size_t dmacs_cfg; scalar_t__ dmacs_count; TYPE_1__* dmacs; } ;
struct TYPE_2__ {scalar_t__ dmac; int vf_map; } ;


 int BIT_ULL (size_t) ;

__attribute__((used)) static int bgx_lmac_save_filter(struct lmac *lmac, u64 dmac, u8 vf_id)
{
 u8 i = 0;

 if (!lmac)
  return -1;
 for (i = 0; i < lmac->dmacs_cfg; i++) {
  if (lmac->dmacs[i].dmac == dmac) {
   lmac->dmacs[i].vf_map |= BIT_ULL(vf_id);
   return -1;
  }
 }

 if (!(lmac->dmacs_cfg < lmac->dmacs_count))
  return -1;


 lmac->dmacs[lmac->dmacs_cfg].dmac = dmac;
 lmac->dmacs[lmac->dmacs_cfg].vf_map = BIT_ULL(vf_id);
 lmac->dmacs_cfg++;
 return 0;
}
