
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i40e_context_ele {scalar_t__ width; int size_of; } ;
typedef int i40e_status ;


 int i40e_write_byte (int *,struct i40e_context_ele*,int *) ;
 int i40e_write_dword (int *,struct i40e_context_ele*,int *) ;
 int i40e_write_qword (int *,struct i40e_context_ele*,int *) ;
 int i40e_write_word (int *,struct i40e_context_ele*,int *) ;

__attribute__((used)) static i40e_status i40e_set_hmc_context(u8 *context_bytes,
     struct i40e_context_ele *ce_info,
     u8 *dest)
{
 int f;

 for (f = 0; ce_info[f].width != 0; f++) {





  switch (ce_info[f].size_of) {
  case 1:
   i40e_write_byte(context_bytes, &ce_info[f], dest);
   break;
  case 2:
   i40e_write_word(context_bytes, &ce_info[f], dest);
   break;
  case 4:
   i40e_write_dword(context_bytes, &ce_info[f], dest);
   break;
  case 8:
   i40e_write_qword(context_bytes, &ce_info[f], dest);
   break;
  }
 }

 return 0;
}
