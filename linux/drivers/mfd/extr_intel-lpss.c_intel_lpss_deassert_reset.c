
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_lpss {scalar_t__ priv; } ;


 scalar_t__ LPSS_PRIV_RESETS ;
 int LPSS_PRIV_RESETS_FUNC ;
 int LPSS_PRIV_RESETS_IDMA ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void intel_lpss_deassert_reset(const struct intel_lpss *lpss)
{
 u32 value = LPSS_PRIV_RESETS_FUNC | LPSS_PRIV_RESETS_IDMA;


 writel(value, lpss->priv + LPSS_PRIV_RESETS);
}
