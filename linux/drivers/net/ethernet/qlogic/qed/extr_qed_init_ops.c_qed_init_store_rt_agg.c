
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {size_t* init_val; int* b_valid; } ;
struct qed_hwfn {TYPE_1__ rt_data; } ;



void qed_init_store_rt_agg(struct qed_hwfn *p_hwfn,
      u32 rt_offset, u32 *p_val, size_t size)
{
 size_t i;

 for (i = 0; i < size / sizeof(u32); i++) {
  p_hwfn->rt_data.init_val[rt_offset + i] = p_val[i];
  p_hwfn->rt_data.b_valid[rt_offset + i] = 1;
 }
}
