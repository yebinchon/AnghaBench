
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qed_ooo_info {int cid_base; int max_num_archipelagos; struct qed_ooo_archipelago* p_archipelagos_mem; } ;
struct qed_ooo_archipelago {int isles_list; } ;
struct qed_hwfn {int dummy; } ;


 scalar_t__ list_empty (int *) ;

__attribute__((used)) static struct qed_ooo_archipelago
*qed_ooo_seek_archipelago(struct qed_hwfn *p_hwfn,
     struct qed_ooo_info
     *p_ooo_info,
     u32 cid)
{
 u32 idx = (cid & 0xffff) - p_ooo_info->cid_base;
 struct qed_ooo_archipelago *p_archipelago;

 if (idx >= p_ooo_info->max_num_archipelagos)
  return ((void*)0);

 p_archipelago = &p_ooo_info->p_archipelagos_mem[idx];

 if (list_empty(&p_archipelago->isles_list))
  return ((void*)0);

 return p_archipelago;
}
