
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msdc_host {scalar_t__ base; scalar_t__ internal_cd; } ;


 scalar_t__ MSDC_INT ;
 scalar_t__ MSDC_INTEN ;
 scalar_t__ MSDC_PS ;
 int MSDC_PS_CDEN ;
 scalar_t__ SDC_CFG ;
 int SDC_CFG_INSWKUP ;
 int readl (scalar_t__) ;
 int sdr_clr_bits (scalar_t__,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void msdc_deinit_hw(struct msdc_host *host)
{
 u32 val;

 if (host->internal_cd) {

  sdr_clr_bits(host->base + MSDC_PS, MSDC_PS_CDEN);
  sdr_clr_bits(host->base + SDC_CFG, SDC_CFG_INSWKUP);
 }


 writel(0, host->base + MSDC_INTEN);

 val = readl(host->base + MSDC_INT);
 writel(val, host->base + MSDC_INT);
}
