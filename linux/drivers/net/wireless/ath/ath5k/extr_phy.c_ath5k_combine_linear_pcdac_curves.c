
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int* txp_pd_table; int** tmpL; int txp_min_idx; } ;
struct ath5k_hw {TYPE_1__ ah_txpower; } ;
typedef int s16 ;



__attribute__((used)) static void
ath5k_combine_linear_pcdac_curves(struct ath5k_hw *ah, s16* table_min,
      s16 *table_max, u8 pdcurves)
{
 u8 *pcdac_out = ah->ah_txpower.txp_pd_table;
 u8 *pcdac_low_pwr;
 u8 *pcdac_high_pwr;
 u8 *pcdac_tmp;
 u8 pwr;
 s16 max_pwr_idx;
 s16 min_pwr_idx;
 s16 mid_pwr_idx = 0;






 u8 edge_flag;
 int i;





 if (pdcurves > 1) {
  pcdac_low_pwr = ah->ah_txpower.tmpL[1];
  pcdac_high_pwr = ah->ah_txpower.tmpL[0];
  mid_pwr_idx = table_max[1] - table_min[1] - 1;
  max_pwr_idx = (table_max[0] - table_min[0]) / 2;




  if (table_max[0] - table_min[1] > 126)
   min_pwr_idx = table_max[0] - 126;
  else
   min_pwr_idx = table_min[1];



  pcdac_tmp = pcdac_high_pwr;

  edge_flag = 0x40;
 } else {
  pcdac_low_pwr = ah->ah_txpower.tmpL[1];
  pcdac_high_pwr = ah->ah_txpower.tmpL[0];
  min_pwr_idx = table_min[0];
  max_pwr_idx = (table_max[0] - table_min[0]) / 2;
  pcdac_tmp = pcdac_high_pwr;
  edge_flag = 0;
 }


 ah->ah_txpower.txp_min_idx = min_pwr_idx / 2;


 pwr = max_pwr_idx;
 for (i = 63; i >= 0; i--) {



  if (edge_flag == 0x40 &&
  (2 * pwr <= (table_max[1] - table_min[0]) || pwr == 0)) {
   edge_flag = 0x00;
   pcdac_tmp = pcdac_low_pwr;
   pwr = mid_pwr_idx / 2;
  }





  if (pcdac_tmp[pwr] < 1 && (edge_flag == 0x00)) {
   while (i >= 0) {
    pcdac_out[i] = pcdac_out[i + 1];
    i--;
   }
   break;
  }

  pcdac_out[i] = pcdac_tmp[pwr] | edge_flag;




  if (pcdac_out[i] > 126)
   pcdac_out[i] = 126;


  pwr--;
 }
}
