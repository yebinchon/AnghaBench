
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *mtk_eth_path_name(int path)
{
 switch (path) {
 case 133:
  return "gmac1_rgmii";
 case 131:
  return "gmac1_trgmii";
 case 132:
  return "gmac1_sgmii";
 case 129:
  return "gmac2_rgmii";
 case 128:
  return "gmac2_sgmii";
 case 130:
  return "gmac2_gephy";
 case 134:
  return "gdm1_esw";
 default:
  return "unknown path";
 }
}
