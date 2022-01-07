
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef size_t u16 ;
struct qed_ptt {int dummy; } ;
struct TYPE_2__ {int* b_valid; scalar_t__* init_val; } ;
struct qed_hwfn {TYPE_1__ rt_data; } ;


 int qed_dmae_host2grc (struct qed_hwfn*,struct qed_ptt*,uintptr_t,scalar_t__,size_t,int *) ;
 int qed_wr (struct qed_hwfn*,struct qed_ptt*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int qed_init_rt(struct qed_hwfn *p_hwfn,
         struct qed_ptt *p_ptt,
         u32 addr, u16 rt_offset, u16 size, bool b_must_dmae)
{
 u32 *p_init_val = &p_hwfn->rt_data.init_val[rt_offset];
 bool *p_valid = &p_hwfn->rt_data.b_valid[rt_offset];
 u16 i, segment;
 int rc = 0;




 for (i = 0; i < size; i++) {
  if (!p_valid[i])
   continue;




  if (!b_must_dmae) {
   qed_wr(p_hwfn, p_ptt, addr + (i << 2), p_init_val[i]);
   continue;
  }


  for (segment = 1; i + segment < size; segment++)
   if (!p_valid[i + segment])
    break;

  rc = qed_dmae_host2grc(p_hwfn, p_ptt,
           (uintptr_t)(p_init_val + i),
           addr + (i << 2), segment, ((void*)0));
  if (rc)
   return rc;


  i += segment;
 }

 return rc;
}
