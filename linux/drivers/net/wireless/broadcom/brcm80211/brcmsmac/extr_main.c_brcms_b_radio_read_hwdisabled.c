
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct brcms_hardware {int sbclk; int clk; int d11core; int corerev; } ;


 int D11REGOFFS (int ) ;
 scalar_t__ D11REV_GE (int ,int) ;
 int OFF ;
 int ON ;
 int PDBG_RFD ;
 int SICF_PCLKE ;
 int bcma_core_disable (int ,int ) ;
 int bcma_core_enable (int ,int ) ;
 int bcma_read32 (int ,int ) ;
 int brcms_b_xtal (struct brcms_hardware*,int ) ;
 int brcms_c_mctrl_reset (struct brcms_hardware*) ;
 int phydebug ;

__attribute__((used)) static bool brcms_b_radio_read_hwdisabled(struct brcms_hardware *wlc_hw)
{
 bool v, clk, xtal;
 u32 flags = 0;

 xtal = wlc_hw->sbclk;
 if (!xtal)
  brcms_b_xtal(wlc_hw, ON);


 clk = wlc_hw->clk;
 if (!clk) {





  if (D11REV_GE(wlc_hw->corerev, 18))
   flags |= SICF_PCLKE;
  bcma_core_enable(wlc_hw->d11core, flags);
  brcms_c_mctrl_reset(wlc_hw);
 }

 v = ((bcma_read32(wlc_hw->d11core,
     D11REGOFFS(phydebug)) & PDBG_RFD) != 0);


 if (!clk)
  bcma_core_disable(wlc_hw->d11core, 0);

 if (!xtal)
  brcms_b_xtal(wlc_hw, OFF);

 return v;
}
