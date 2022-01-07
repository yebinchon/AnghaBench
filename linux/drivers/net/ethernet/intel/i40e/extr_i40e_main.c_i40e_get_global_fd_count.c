
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_pf {int hw; } ;


 int I40E_GLQF_FDCNT_0 ;
 int I40E_GLQF_FDCNT_0_BESTCNT_MASK ;
 int I40E_GLQF_FDCNT_0_BESTCNT_SHIFT ;
 int I40E_GLQF_FDCNT_0_GUARANT_CNT_MASK ;
 int rd32 (int *,int ) ;

u32 i40e_get_global_fd_count(struct i40e_pf *pf)
{
 u32 val, fcnt_prog;

 val = rd32(&pf->hw, I40E_GLQF_FDCNT_0);
 fcnt_prog = (val & I40E_GLQF_FDCNT_0_GUARANT_CNT_MASK) +
      ((val & I40E_GLQF_FDCNT_0_BESTCNT_MASK) >>
       I40E_GLQF_FDCNT_0_BESTCNT_SHIFT);
 return fcnt_prog;
}
