
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dev; int high_pll; struct goya_device* asic_specific; } ;
struct goya_device {int ic_clk; int tpc_clk; int mme_clk; } ;
typedef enum hl_pll_frequency { ____Placeholder_hl_pll_frequency } hl_pll_frequency ;


 int GOYA_PLL_FREQ_LOW ;
 int IC_PLL ;
 int MME_PLL ;



 int TPC_PLL ;
 int dev_err (int ,char*) ;
 int hl_set_frequency (struct hl_device*,int ,int ) ;

void goya_set_pll_profile(struct hl_device *hdev, enum hl_pll_frequency freq)
{
 struct goya_device *goya = hdev->asic_specific;

 switch (freq) {
 case 130:
  hl_set_frequency(hdev, MME_PLL, hdev->high_pll);
  hl_set_frequency(hdev, TPC_PLL, hdev->high_pll);
  hl_set_frequency(hdev, IC_PLL, hdev->high_pll);
  break;
 case 128:
  hl_set_frequency(hdev, MME_PLL, GOYA_PLL_FREQ_LOW);
  hl_set_frequency(hdev, TPC_PLL, GOYA_PLL_FREQ_LOW);
  hl_set_frequency(hdev, IC_PLL, GOYA_PLL_FREQ_LOW);
  break;
 case 129:
  hl_set_frequency(hdev, MME_PLL, goya->mme_clk);
  hl_set_frequency(hdev, TPC_PLL, goya->tpc_clk);
  hl_set_frequency(hdev, IC_PLL, goya->ic_clk);
  break;
 default:
  dev_err(hdev->dev, "unknown frequency setting\n");
 }
}
