
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cxl_context {int dummy; } ;


 int CXL_PSL_DSISR_An_DM ;
 scalar_t__ cxl_is_power8 () ;
 scalar_t__ cxl_is_power9 () ;

__attribute__((used)) static bool cxl_is_page_fault(struct cxl_context *ctx, u64 dsisr)
{
 if ((cxl_is_power8()) && (dsisr & CXL_PSL_DSISR_An_DM))
  return 1;

 if (cxl_is_power9())
  return 1;

 return 0;
}
