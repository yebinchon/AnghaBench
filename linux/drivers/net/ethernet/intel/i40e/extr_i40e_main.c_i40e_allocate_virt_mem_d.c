
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_virt_mem {int va; int size; } ;
struct i40e_hw {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kzalloc (int ,int ) ;

int i40e_allocate_virt_mem_d(struct i40e_hw *hw, struct i40e_virt_mem *mem,
        u32 size)
{
 mem->size = size;
 mem->va = kzalloc(size, GFP_KERNEL);

 if (!mem->va)
  return -ENOMEM;

 return 0;
}
