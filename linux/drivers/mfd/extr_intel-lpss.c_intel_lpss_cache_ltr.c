
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_lpss {scalar_t__ priv; void* idle_ltr; void* active_ltr; } ;


 scalar_t__ LPSS_PRIV_ACTIVELTR ;
 scalar_t__ LPSS_PRIV_IDLELTR ;
 void* readl (scalar_t__) ;

__attribute__((used)) static void intel_lpss_cache_ltr(struct intel_lpss *lpss)
{
 lpss->active_ltr = readl(lpss->priv + LPSS_PRIV_ACTIVELTR);
 lpss->idle_ltr = readl(lpss->priv + LPSS_PRIV_IDLELTR);
}
