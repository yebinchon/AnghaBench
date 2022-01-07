
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iavf_virt_mem {scalar_t__ va; int size; } ;
struct iavf_hw {int dummy; } ;
typedef enum iavf_status { ____Placeholder_iavf_status } iavf_status ;


 int GFP_KERNEL ;
 int IAVF_ERR_NO_MEMORY ;
 int IAVF_ERR_PARAM ;
 scalar_t__ kzalloc (int ,int ) ;

enum iavf_status iavf_allocate_virt_mem_d(struct iavf_hw *hw,
       struct iavf_virt_mem *mem, u32 size)
{
 if (!mem)
  return IAVF_ERR_PARAM;

 mem->size = size;
 mem->va = kzalloc(size, GFP_KERNEL);

 if (mem->va)
  return 0;
 else
  return IAVF_ERR_NO_MEMORY;
}
