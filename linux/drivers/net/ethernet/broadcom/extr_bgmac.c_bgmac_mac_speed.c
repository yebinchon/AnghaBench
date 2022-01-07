
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bgmac {int mac_speed; scalar_t__ mac_duplex; int dev; } ;


 int BGMAC_CMDCFG_ES_10 ;
 int BGMAC_CMDCFG_ES_100 ;
 int BGMAC_CMDCFG_ES_1000 ;
 int BGMAC_CMDCFG_ES_2500 ;
 int BGMAC_CMDCFG_ES_MASK ;
 int BGMAC_CMDCFG_HD ;
 scalar_t__ DUPLEX_HALF ;




 int bgmac_cmdcfg_maskset (struct bgmac*,int,int,int) ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static void bgmac_mac_speed(struct bgmac *bgmac)
{
 u32 mask = ~(BGMAC_CMDCFG_ES_MASK | BGMAC_CMDCFG_HD);
 u32 set = 0;

 switch (bgmac->mac_speed) {
 case 131:
  set |= BGMAC_CMDCFG_ES_10;
  break;
 case 130:
  set |= BGMAC_CMDCFG_ES_100;
  break;
 case 129:
  set |= BGMAC_CMDCFG_ES_1000;
  break;
 case 128:
  set |= BGMAC_CMDCFG_ES_2500;
  break;
 default:
  dev_err(bgmac->dev, "Unsupported speed: %d\n",
   bgmac->mac_speed);
 }

 if (bgmac->mac_duplex == DUPLEX_HALF)
  set |= BGMAC_CMDCFG_HD;

 bgmac_cmdcfg_maskset(bgmac, mask, set, 1);
}
