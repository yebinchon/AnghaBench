
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sc_data {int load_coeff_v; } ;


 int SC_NUM_PHASES ;
 int SC_NUM_TAPS_MEM_ALIGN ;
 int SC_V_NUM_TAPS ;
 int VS_1_TO_1_SCALE ;
 int VS_LT_9_16_SCALE ;
 int VS_UP_SCALE ;
 int ** scaler_vs_coeffs ;

void sc_set_vs_coeffs(struct sc_data *sc, void *addr, unsigned int src_h,
  unsigned int dst_h)
{
 int sixteenths;
 int idx;
 int i, j;
 u16 *coeff_v = addr;
 const u16 *cp;

 if (dst_h > src_h) {
  idx = VS_UP_SCALE;
 } else if (dst_h == src_h) {
  idx = VS_1_TO_1_SCALE;
 } else {
  sixteenths = (dst_h << 4) / src_h;
  if (sixteenths < 8)
   sixteenths = 8;
  idx = VS_LT_9_16_SCALE + sixteenths - 8;
 }

 cp = scaler_vs_coeffs[idx];

 for (i = 0; i < SC_NUM_PHASES * 2; i++) {
  for (j = 0; j < SC_V_NUM_TAPS; j++)
   *coeff_v++ = *cp++;





  coeff_v += SC_NUM_TAPS_MEM_ALIGN - SC_V_NUM_TAPS;
 }

 sc->load_coeff_v = 1;
}
