
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum vpbe_enc_timings_type { ____Placeholder_vpbe_enc_timings_type } vpbe_enc_timings_type ;


 int VPBE_ENC_DV_TIMINGS ;
 int VPBE_ENC_STD ;
 int VPBE_VERSION_1 ;
 int VPBE_VERSION_2 ;
 int VPBE_VERSION_3 ;
 int VPSS_VENC_CLOCK_SEL ;
 int VPSS_VPBE_CLOCK ;
 int vpss_enable_clock (int ,int) ;

__attribute__((used)) static void
venc_enable_vpss_clock(int venc_type,
         enum vpbe_enc_timings_type type,
         unsigned int pclock)
{
 if (venc_type == VPBE_VERSION_1)
  return;

 if (venc_type == VPBE_VERSION_2 && (type == VPBE_ENC_STD || (type ==
     VPBE_ENC_DV_TIMINGS && pclock <= 27000000))) {
  vpss_enable_clock(VPSS_VENC_CLOCK_SEL, 1);
  vpss_enable_clock(VPSS_VPBE_CLOCK, 1);
  return;
 }

 if (venc_type == VPBE_VERSION_3 && type == VPBE_ENC_STD)
  vpss_enable_clock(VPSS_VENC_CLOCK_SEL, 0);
}
