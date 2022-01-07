
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int fwcapinfo; int fwrelease; } ;


 int MESH_CAPINFO_ENABLE_MASK ;
 scalar_t__ MRVL_FW_MAJOR_REV (int ) ;
 scalar_t__ MRVL_FW_V10 ;
 scalar_t__ MRVL_FW_V5 ;

int lbs_rtap_supported(struct lbs_private *priv)
{
 if (MRVL_FW_MAJOR_REV(priv->fwrelease) == MRVL_FW_V5)
  return 1;


 return ((MRVL_FW_MAJOR_REV(priv->fwrelease) >= MRVL_FW_V10) &&
  (priv->fwcapinfo & MESH_CAPINFO_ENABLE_MASK));
}
