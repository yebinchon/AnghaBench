
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int ADVERTISED_10000baseT_Full ;
 int ADVERTISED_1000baseT_Full ;
 int ADVERTISED_1000baseT_Half ;
 int ADVERTISED_100baseT_Full ;
 int ADVERTISED_100baseT_Half ;
 int ADVERTISED_40000baseCR4_Full ;
 int BNXT_LINK_SPEED_MSK_100MB ;
 int BNXT_LINK_SPEED_MSK_10GB ;
 int BNXT_LINK_SPEED_MSK_1GB ;
 int BNXT_LINK_SPEED_MSK_40GB ;

u16 bnxt_get_fw_auto_link_speeds(u32 advertising)
{
 u16 fw_speed_mask = 0;


 if (advertising & (ADVERTISED_100baseT_Full |
      ADVERTISED_100baseT_Half)) {
  fw_speed_mask |= BNXT_LINK_SPEED_MSK_100MB;
 }
 if (advertising & (ADVERTISED_1000baseT_Full |
      ADVERTISED_1000baseT_Half)) {
  fw_speed_mask |= BNXT_LINK_SPEED_MSK_1GB;
 }
 if (advertising & ADVERTISED_10000baseT_Full)
  fw_speed_mask |= BNXT_LINK_SPEED_MSK_10GB;

 if (advertising & ADVERTISED_40000baseCR4_Full)
  fw_speed_mask |= BNXT_LINK_SPEED_MSK_40GB;

 return fw_speed_mask;
}
