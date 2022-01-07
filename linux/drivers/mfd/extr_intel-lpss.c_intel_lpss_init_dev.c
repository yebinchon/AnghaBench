
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_lpss {scalar_t__ type; scalar_t__ priv; } ;


 scalar_t__ LPSS_DEV_SPI ;
 scalar_t__ LPSS_PRIV_RESETS ;
 scalar_t__ LPSS_PRIV_SSP_REG ;
 int LPSS_PRIV_SSP_REG_DIS_DMA_FIN ;
 int intel_lpss_deassert_reset (struct intel_lpss const*) ;
 int intel_lpss_has_idma (struct intel_lpss const*) ;
 int intel_lpss_set_remap_addr (struct intel_lpss const*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void intel_lpss_init_dev(const struct intel_lpss *lpss)
{
 u32 value = LPSS_PRIV_SSP_REG_DIS_DMA_FIN;


 writel(0, lpss->priv + LPSS_PRIV_RESETS);

 intel_lpss_deassert_reset(lpss);

 intel_lpss_set_remap_addr(lpss);

 if (!intel_lpss_has_idma(lpss))
  return;


 if (lpss->type == LPSS_DEV_SPI)
  writel(value, lpss->priv + LPSS_PRIV_SSP_REG);
}
