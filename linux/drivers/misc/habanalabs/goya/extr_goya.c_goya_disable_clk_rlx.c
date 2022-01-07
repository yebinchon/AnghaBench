
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dummy; } ;


 int WREG32 (int ,int) ;
 int mmIC_PLL_CLK_RLX_0 ;
 int mmPSOC_MME_PLL_CLK_RLX_0 ;

__attribute__((used)) static void goya_disable_clk_rlx(struct hl_device *hdev)
{
 WREG32(mmPSOC_MME_PLL_CLK_RLX_0, 0x100010);
 WREG32(mmIC_PLL_CLK_RLX_0, 0x100010);
}
