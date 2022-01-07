
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int flags; void* mac_xcvr; } ;


 int EINVAL ;
 void* MAC_XCVR_MII ;
 void* MAC_XCVR_PCS ;
 void* MAC_XCVR_XPCS ;
 int NIU_FLAGS_10G ;
 int NIU_FLAGS_FIBER ;
 int NIU_FLAGS_XCVR_SERDES ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int niu_phy_type_prop_decode(struct niu *np, const char *phy_prop)
{
 if (!strcmp(phy_prop, "mif")) {

  np->flags &= ~(NIU_FLAGS_FIBER |
          NIU_FLAGS_10G);
  np->mac_xcvr = MAC_XCVR_MII;
 } else if (!strcmp(phy_prop, "xgf")) {

  np->flags |= (NIU_FLAGS_10G |
         NIU_FLAGS_FIBER);
  np->mac_xcvr = MAC_XCVR_XPCS;
 } else if (!strcmp(phy_prop, "pcs")) {

  np->flags &= ~NIU_FLAGS_10G;
  np->flags |= NIU_FLAGS_FIBER;
  np->mac_xcvr = MAC_XCVR_PCS;
 } else if (!strcmp(phy_prop, "xgc")) {

  np->flags |= NIU_FLAGS_10G;
  np->flags &= ~NIU_FLAGS_FIBER;
  np->mac_xcvr = MAC_XCVR_XPCS;
 } else if (!strcmp(phy_prop, "xgsd") || !strcmp(phy_prop, "gsd")) {

  np->flags |= NIU_FLAGS_10G;
  np->flags &= ~NIU_FLAGS_FIBER;
  np->flags |= NIU_FLAGS_XCVR_SERDES;
  np->mac_xcvr = MAC_XCVR_XPCS;
 } else {
  return -EINVAL;
 }
 return 0;
}
