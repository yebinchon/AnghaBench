
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cxl_context {int dummy; } ;


 int CXL_PSL_DSISR_An_DS ;
 scalar_t__ cxl_is_power8 () ;

__attribute__((used)) static bool cxl_is_segment_miss(struct cxl_context *ctx, u64 dsisr)
{
 if ((cxl_is_power8() && (dsisr & CXL_PSL_DSISR_An_DS)))
  return 1;

 return 0;
}
