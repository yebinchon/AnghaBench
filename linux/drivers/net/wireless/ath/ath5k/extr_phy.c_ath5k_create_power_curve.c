
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int s16 ;


 int AR5K_EEPROM_POWER_TABLE_SIZE ;
 int AR5K_PWRTABLE_LINEAR_PCDAC ;
 scalar_t__ ath5k_get_interpolated_value (int,int const,int const,int const,int const) ;

__attribute__((used)) static void
ath5k_create_power_curve(s16 pmin, s16 pmax,
   const s16 *pwr, const u8 *vpd,
   u8 num_points,
   u8 *vpd_table, u8 type)
{
 u8 idx[2] = { 0, 1 };
 s16 pwr_i = 2 * pmin;
 int i;

 if (num_points < 2)
  return;





 if (type == AR5K_PWRTABLE_LINEAR_PCDAC) {
  pwr_i = pmin;
  pmin = 0;
  pmax = 63;
 }



 for (i = 0; (i <= (u16) (pmax - pmin)) &&
 (i < AR5K_EEPROM_POWER_TABLE_SIZE); i++) {




  if ((pwr_i > pwr[idx[1]]) && (idx[1] < num_points - 1)) {
   idx[0]++;
   idx[1]++;
  }

  vpd_table[i] = (u8) ath5k_get_interpolated_value(pwr_i,
      pwr[idx[0]], pwr[idx[1]],
      vpd[idx[0]], vpd[idx[1]]);



  pwr_i += 2;
 }
}
