
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {scalar_t__ ioaddr; } ;
struct pltfm_imx_data {scalar_t__ multiblock_status; int pins_200mhz; int pins_100mhz; TYPE_1__* socdata; } ;
struct TYPE_2__ {int flags; } ;


 int ESDHC_FLAG_HAVE_CAP1 ;
 int ESDHC_FLAG_HS400 ;
 int ESDHC_INT_VENDOR_SPEC_DMA_ERR ;
 scalar_t__ IS_ERR_OR_NULL (int ) ;
 scalar_t__ NO_CMD_PENDING ;
 int SDHCI_CAN_DO_ADMA1 ;
 int SDHCI_CAN_DO_ADMA2 ;
 int SDHCI_CAPABILITIES ;
 int SDHCI_CAPABILITIES_1 ;
 int SDHCI_INT_ADMA_ERROR ;
 int SDHCI_INT_RESPONSE ;
 int SDHCI_INT_STATUS ;
 int SDHCI_MAX_CURRENT ;
 int SDHCI_MAX_CURRENT_180_SHIFT ;
 int SDHCI_MAX_CURRENT_300_SHIFT ;
 int SDHCI_MAX_CURRENT_330_SHIFT ;
 int SDHCI_PRESENT_STATE ;
 int SDHCI_RETUNING_MODE_SHIFT ;
 int SDHCI_SUPPORT_DDR50 ;
 int SDHCI_SUPPORT_HS400 ;
 int SDHCI_SUPPORT_SDR104 ;
 int SDHCI_SUPPORT_SDR50 ;
 int SDHCI_TUNING_MODE_3 ;
 int SDHCI_USE_SDR50_TUNING ;
 scalar_t__ WAIT_FOR_INT ;
 scalar_t__ esdhc_is_usdhc (struct pltfm_imx_data*) ;
 int readl (scalar_t__) ;
 struct pltfm_imx_data* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 scalar_t__ unlikely (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static u32 esdhc_readl_le(struct sdhci_host *host, int reg)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct pltfm_imx_data *imx_data = sdhci_pltfm_priv(pltfm_host);
 u32 val = readl(host->ioaddr + reg);

 if (unlikely(reg == SDHCI_PRESENT_STATE)) {
  u32 fsl_prss = val;

  val = fsl_prss & 0x000FFFFF;

  val |= (fsl_prss & 0x0F000000) >> 4;

  val |= (fsl_prss & 0x00800000) << 1;
 }

 if (unlikely(reg == SDHCI_CAPABILITIES)) {

  if (imx_data->socdata->flags & ESDHC_FLAG_HAVE_CAP1)
   val &= 0xffff0000;
  if (val & SDHCI_CAN_DO_ADMA1) {
   val &= ~SDHCI_CAN_DO_ADMA1;
   val |= SDHCI_CAN_DO_ADMA2;
  }
 }

 if (unlikely(reg == SDHCI_CAPABILITIES_1)) {
  if (esdhc_is_usdhc(imx_data)) {
   if (imx_data->socdata->flags & ESDHC_FLAG_HAVE_CAP1)
    val = readl(host->ioaddr + SDHCI_CAPABILITIES) & 0xFFFF;
   else

    val = SDHCI_SUPPORT_DDR50 | SDHCI_SUPPORT_SDR104
     | SDHCI_SUPPORT_SDR50
     | SDHCI_USE_SDR50_TUNING
     | (SDHCI_TUNING_MODE_3 << SDHCI_RETUNING_MODE_SHIFT);

   if (imx_data->socdata->flags & ESDHC_FLAG_HS400)
    val |= SDHCI_SUPPORT_HS400;





   if (IS_ERR_OR_NULL(imx_data->pins_100mhz) ||
       IS_ERR_OR_NULL(imx_data->pins_200mhz))
    val &= ~(SDHCI_SUPPORT_SDR50 | SDHCI_SUPPORT_DDR50
      | SDHCI_SUPPORT_SDR104 | SDHCI_SUPPORT_HS400);
  }
 }

 if (unlikely(reg == SDHCI_MAX_CURRENT) && esdhc_is_usdhc(imx_data)) {
  val = 0;
  val |= 0xFF << SDHCI_MAX_CURRENT_330_SHIFT;
  val |= 0xFF << SDHCI_MAX_CURRENT_300_SHIFT;
  val |= 0xFF << SDHCI_MAX_CURRENT_180_SHIFT;
 }

 if (unlikely(reg == SDHCI_INT_STATUS)) {
  if (val & ESDHC_INT_VENDOR_SPEC_DMA_ERR) {
   val &= ~ESDHC_INT_VENDOR_SPEC_DMA_ERR;
   val |= SDHCI_INT_ADMA_ERROR;
  }





  if ((imx_data->multiblock_status == WAIT_FOR_INT) &&
      ((val & SDHCI_INT_RESPONSE) == SDHCI_INT_RESPONSE)) {
   val &= ~SDHCI_INT_RESPONSE;
   writel(SDHCI_INT_RESPONSE, host->ioaddr +
         SDHCI_INT_STATUS);
   imx_data->multiblock_status = NO_CMD_PENDING;
  }
 }

 return val;
}
