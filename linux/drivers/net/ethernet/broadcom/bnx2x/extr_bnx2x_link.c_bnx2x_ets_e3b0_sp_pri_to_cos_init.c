
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t DCBX_INVALID_COS ;
 size_t DCBX_MAX_NUM_COS ;

__attribute__((used)) static void bnx2x_ets_e3b0_sp_pri_to_cos_init(u8 *sp_pri_to_cos)
{
 u8 pri = 0;
 for (pri = 0; pri < DCBX_MAX_NUM_COS; pri++)
  sp_pri_to_cos[pri] = DCBX_INVALID_COS;
}
