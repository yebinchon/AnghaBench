
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef size_t u32 ;
struct isc_ctrls {size_t* hist_count; size_t** hist_minmax; size_t* offset; size_t* gain; } ;


 int HIST_ENTRIES ;
 size_t HIST_MAX_INDEX ;
 size_t HIST_MIN_INDEX ;
 size_t ISC_HIS_CFG_MODE_B ;
 size_t ISC_HIS_CFG_MODE_GB ;
 size_t ISC_HIS_CFG_MODE_GR ;
 size_t ISC_WB_O_ZERO_VAL ;
 size_t div_u64 (int,size_t) ;

__attribute__((used)) static void isc_wb_update(struct isc_ctrls *ctrls)
{
 u32 *hist_count = &ctrls->hist_count[0];
 u32 c, offset[4];
 u64 avg = 0;

 u32 s_gain[4], gw_gain[4];







 avg = (u64)hist_count[ISC_HIS_CFG_MODE_GR] +
  (u64)hist_count[ISC_HIS_CFG_MODE_GB];
 avg >>= 1;


 if (!avg)
  return;

 for (c = ISC_HIS_CFG_MODE_GR; c <= ISC_HIS_CFG_MODE_B; c++) {





  offset[c] = ctrls->hist_minmax[c][HIST_MIN_INDEX];
  ctrls->offset[c] = (offset[c] - 1) << 3;


  if (!ctrls->offset[c])
   ctrls->offset[c] = ISC_WB_O_ZERO_VAL;
  s_gain[c] = (HIST_ENTRIES << 9) /
   (ctrls->hist_minmax[c][HIST_MAX_INDEX] -
   ctrls->hist_minmax[c][HIST_MIN_INDEX] + 1);







  if (hist_count[c])
   gw_gain[c] = div_u64(avg << 9, hist_count[c]);
  else
   gw_gain[c] = 1 << 9;


  ctrls->gain[c] = s_gain[c] * gw_gain[c];
  ctrls->gain[c] >>= 9;
 }
}
