
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iavf_virt_mem {int va; } ;
struct iavf_hw {int dummy; } ;
typedef enum iavf_status { ____Placeholder_iavf_status } iavf_status ;


 int IAVF_ERR_PARAM ;
 int kfree (int ) ;

enum iavf_status iavf_free_virt_mem_d(struct iavf_hw *hw,
          struct iavf_virt_mem *mem)
{
 if (!mem)
  return IAVF_ERR_PARAM;


 kfree(mem->va);

 return 0;
}
