
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum usbhs_omap_port_mode { ____Placeholder_usbhs_omap_port_mode } usbhs_omap_port_mode ;
 int OMAP_TLL_FSLSMODE_2PIN_DAT_DP_DM ;
 int OMAP_TLL_FSLSMODE_2PIN_TLL_DAT_SE0 ;
 int OMAP_TLL_FSLSMODE_3PIN_PHY ;
 int OMAP_TLL_FSLSMODE_3PIN_TLL ;
 int OMAP_TLL_FSLSMODE_4PIN_PHY ;
 int OMAP_TLL_FSLSMODE_4PIN_TLL ;
 int OMAP_TLL_FSLSMODE_6PIN_PHY_DAT_SE0 ;
 int OMAP_TLL_FSLSMODE_6PIN_PHY_DP_DM ;
 int OMAP_TLL_FSLSMODE_6PIN_TLL_DAT_SE0 ;
 int OMAP_TLL_FSLSMODE_6PIN_TLL_DP_DM ;

 int pr_warn (char*) ;

__attribute__((used)) static unsigned ohci_omap3_fslsmode(enum usbhs_omap_port_mode mode)
{
 switch (mode) {
 case 128:
 case 136:
  return OMAP_TLL_FSLSMODE_6PIN_PHY_DAT_SE0;

 case 135:
  return OMAP_TLL_FSLSMODE_6PIN_PHY_DP_DM;

 case 138:
  return OMAP_TLL_FSLSMODE_3PIN_PHY;

 case 137:
  return OMAP_TLL_FSLSMODE_4PIN_PHY;

 case 130:
  return OMAP_TLL_FSLSMODE_6PIN_TLL_DAT_SE0;

 case 129:
  return OMAP_TLL_FSLSMODE_6PIN_TLL_DP_DM;

 case 132:
  return OMAP_TLL_FSLSMODE_3PIN_TLL;

 case 131:
  return OMAP_TLL_FSLSMODE_4PIN_TLL;

 case 134:
  return OMAP_TLL_FSLSMODE_2PIN_TLL_DAT_SE0;

 case 133:
  return OMAP_TLL_FSLSMODE_2PIN_DAT_DP_DM;
 default:
  pr_warn("Invalid port mode, using default\n");
  return OMAP_TLL_FSLSMODE_6PIN_PHY_DAT_SE0;
 }
}
