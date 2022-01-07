
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gswip_priv {int dummy; } ;


 int GSWIP_MII_PCDU0 ;
 int GSWIP_MII_PCDU1 ;
 int GSWIP_MII_PCDU5 ;
 int gswip_mii_mask (struct gswip_priv*,int ,int ,int ) ;

__attribute__((used)) static void gswip_mii_mask_pcdu(struct gswip_priv *priv, u32 clear, u32 set,
    int port)
{
 switch (port) {
 case 0:
  gswip_mii_mask(priv, clear, set, GSWIP_MII_PCDU0);
  break;
 case 1:
  gswip_mii_mask(priv, clear, set, GSWIP_MII_PCDU1);
  break;
 case 5:
  gswip_mii_mask(priv, clear, set, GSWIP_MII_PCDU5);
  break;
 }
}
