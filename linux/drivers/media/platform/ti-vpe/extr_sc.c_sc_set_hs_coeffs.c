
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sc_data {int load_coeff_h; } ;


 int HS_LE_16_16_SCALE ;
 int HS_LT_9_16_SCALE ;
 int HS_UP_SCALE ;
 int SC_H_NUM_TAPS ;
 int SC_NUM_PHASES ;
 int SC_NUM_TAPS_MEM_ALIGN ;
 int ** scaler_hs_coeffs ;

void sc_set_hs_coeffs(struct sc_data *sc, void *addr, unsigned int src_w,
  unsigned int dst_w)
{
 int sixteenths;
 int idx;
 int i, j;
 u16 *coeff_h = addr;
 const u16 *cp;

 if (dst_w > src_w) {
  idx = HS_UP_SCALE;
 } else {
  if ((dst_w << 1) < src_w)
   dst_w <<= 1;
  if ((dst_w << 1) < src_w)
   dst_w <<= 1;

  if (dst_w == src_w) {
   idx = HS_LE_16_16_SCALE;
  } else {
   sixteenths = (dst_w << 4) / src_w;
   if (sixteenths < 8)
    sixteenths = 8;
   idx = HS_LT_9_16_SCALE + sixteenths - 8;
  }
 }

 cp = scaler_hs_coeffs[idx];

 for (i = 0; i < SC_NUM_PHASES * 2; i++) {
  for (j = 0; j < SC_H_NUM_TAPS; j++)
   *coeff_h++ = *cp++;






  coeff_h += SC_NUM_TAPS_MEM_ALIGN - SC_H_NUM_TAPS;
 }

 sc->load_coeff_h = 1;
}
