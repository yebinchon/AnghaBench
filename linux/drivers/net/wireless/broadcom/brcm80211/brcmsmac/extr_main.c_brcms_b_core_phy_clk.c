
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_hardware {int phyclk; int unit; int d11core; } ;


 int OFF ;
 int SICF_FGC ;
 int SICF_GMODE ;
 int SICF_PRST ;
 int brcms_b_core_ioctl (struct brcms_hardware*,int,int) ;
 int brcms_dbg_info (int ,char*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void brcms_b_core_phy_clk(struct brcms_hardware *wlc_hw, bool clk)
{
 brcms_dbg_info(wlc_hw->d11core, "wl%d: clk %d\n", wlc_hw->unit, clk);

 wlc_hw->phyclk = clk;

 if (OFF == clk) {

  brcms_b_core_ioctl(wlc_hw, (SICF_PRST | SICF_FGC | SICF_GMODE),
       (SICF_PRST | SICF_FGC));
  udelay(1);
  brcms_b_core_ioctl(wlc_hw, (SICF_PRST | SICF_FGC), SICF_PRST);
  udelay(1);

 } else {

  brcms_b_core_ioctl(wlc_hw, (SICF_PRST | SICF_FGC), SICF_FGC);
  udelay(1);
  brcms_b_core_ioctl(wlc_hw, SICF_FGC, 0);
  udelay(1);

 }
}
