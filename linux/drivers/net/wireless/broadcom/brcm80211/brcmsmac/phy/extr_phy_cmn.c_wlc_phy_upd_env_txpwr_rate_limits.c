
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct brcms_phy {int * txpwr_env_limit; } ;
typedef int s8 ;


 int BRCMS_TXPWR_MAX ;
 size_t TXP_NUM_RATES ;
 int wlc_phy_env_measure_temperature (struct brcms_phy*) ;
 int wlc_phy_env_measure_vbat (struct brcms_phy*) ;

__attribute__((used)) static void wlc_phy_upd_env_txpwr_rate_limits(struct brcms_phy *pi, u32 band)
{
 u8 i;
 s8 temp, vbat;

 for (i = 0; i < TXP_NUM_RATES; i++)
  pi->txpwr_env_limit[i] = BRCMS_TXPWR_MAX;

 vbat = wlc_phy_env_measure_vbat(pi);
 temp = wlc_phy_env_measure_temperature(pi);

}
