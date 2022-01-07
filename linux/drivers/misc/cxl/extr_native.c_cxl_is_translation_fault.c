
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cxl_afu {int dummy; } ;


 int CXL_PSL9_DSISR_An_TF ;
 int CXL_PSL_DSISR_TRANS ;
 scalar_t__ cxl_is_power8 () ;
 scalar_t__ cxl_is_power9 () ;

__attribute__((used)) static bool cxl_is_translation_fault(struct cxl_afu *afu, u64 dsisr)
{
 if ((cxl_is_power8()) && (dsisr & CXL_PSL_DSISR_TRANS))
  return 1;

 if ((cxl_is_power9()) && (dsisr & CXL_PSL9_DSISR_An_TF))
  return 1;

 return 0;
}
