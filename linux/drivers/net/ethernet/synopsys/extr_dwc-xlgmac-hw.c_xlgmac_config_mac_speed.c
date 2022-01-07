
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_pdata {int phy_speed; } ;






 int xlgmac_set_xlgmii_100000_speed (struct xlgmac_pdata*) ;
 int xlgmac_set_xlgmii_25000_speed (struct xlgmac_pdata*) ;
 int xlgmac_set_xlgmii_40000_speed (struct xlgmac_pdata*) ;
 int xlgmac_set_xlgmii_50000_speed (struct xlgmac_pdata*) ;

__attribute__((used)) static void xlgmac_config_mac_speed(struct xlgmac_pdata *pdata)
{
 switch (pdata->phy_speed) {
 case 131:
  xlgmac_set_xlgmii_100000_speed(pdata);
  break;

 case 128:
  xlgmac_set_xlgmii_50000_speed(pdata);
  break;

 case 129:
  xlgmac_set_xlgmii_40000_speed(pdata);
  break;

 case 130:
  xlgmac_set_xlgmii_25000_speed(pdata);
  break;
 }
}
