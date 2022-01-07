
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_virt_mem {scalar_t__ size; int * va; } ;
struct i40e_hw {int dummy; } ;


 int kfree (int *) ;

int i40e_free_virt_mem_d(struct i40e_hw *hw, struct i40e_virt_mem *mem)
{

 kfree(mem->va);
 mem->va = ((void*)0);
 mem->size = 0;

 return 0;
}
