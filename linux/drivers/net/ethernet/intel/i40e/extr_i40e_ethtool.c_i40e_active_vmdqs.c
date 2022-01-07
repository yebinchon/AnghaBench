
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_pf {int dummy; } ;


 int I40E_VSI_VMDQ2 ;
 int i40e_find_vsi_by_type (struct i40e_pf*,int ) ;

__attribute__((used)) static inline bool i40e_active_vmdqs(struct i40e_pf *pf)
{
 return !!i40e_find_vsi_by_type(pf, I40E_VSI_VMDQ2);
}
