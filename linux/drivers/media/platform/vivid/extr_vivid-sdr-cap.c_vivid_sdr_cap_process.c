
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct vivid_dev {int sdr_adc_freq; int sdr_fixp_src_phase; int sdr_fm_deviation; int sdr_fixp_mod_phase; int sdr_pixelformat; } ;
struct TYPE_2__ {int vb2_buf; } ;
struct vivid_buffer {TYPE_1__ vb; } ;
typedef int s64 ;
typedef int s32 ;


 int BEEP_FREQ ;
 void* DIV_ROUND_CLOSEST (int,int) ;
 int FIXP_2PI ;
 int FIXP_FRAC ;
 int FIXP_N ;
 int M_100000PI ;


 scalar_t__ div_s64 (int,int ) ;
 int fixp_cos32_rad (int,int) ;
 int fixp_sin32_rad (int,int) ;
 unsigned long vb2_plane_size (int *,int ) ;
 int * vb2_plane_vaddr (int *,int ) ;

void vivid_sdr_cap_process(struct vivid_dev *dev, struct vivid_buffer *buf)
{
 u8 *vbuf = vb2_plane_vaddr(&buf->vb.vb2_buf, 0);
 unsigned long i;
 unsigned long plane_size = vb2_plane_size(&buf->vb.vb2_buf, 0);
 s64 s64tmp;
 s32 src_phase_step;
 s32 mod_phase_step;
 s32 fixp_i;
 s32 fixp_q;



 src_phase_step = DIV_ROUND_CLOSEST(FIXP_2PI * 1000,
        dev->sdr_adc_freq);

 for (i = 0; i < plane_size; i += 2) {
  mod_phase_step = fixp_cos32_rad(dev->sdr_fixp_src_phase,
      FIXP_2PI) >> (31 - FIXP_N);

  dev->sdr_fixp_src_phase += src_phase_step;
  s64tmp = (s64) mod_phase_step * dev->sdr_fm_deviation;
  dev->sdr_fixp_mod_phase += div_s64(s64tmp, M_100000PI);






  dev->sdr_fixp_src_phase %= FIXP_2PI;
  dev->sdr_fixp_mod_phase %= FIXP_2PI;

  if (dev->sdr_fixp_mod_phase < 0)
   dev->sdr_fixp_mod_phase += FIXP_2PI;

  fixp_i = fixp_cos32_rad(dev->sdr_fixp_mod_phase, FIXP_2PI);
  fixp_q = fixp_sin32_rad(dev->sdr_fixp_mod_phase, FIXP_2PI);



  fixp_i >>= (31 - FIXP_N);
  fixp_q >>= (31 - FIXP_N);

  switch (dev->sdr_pixelformat) {
  case 128:


   fixp_i = fixp_i * 1275 + FIXP_FRAC * 1275;
   fixp_q = fixp_q * 1275 + FIXP_FRAC * 1275;
   *vbuf++ = DIV_ROUND_CLOSEST(fixp_i, FIXP_FRAC * 10);
   *vbuf++ = DIV_ROUND_CLOSEST(fixp_q, FIXP_FRAC * 10);
   break;
  case 129:


   fixp_i = fixp_i * 1275 - FIXP_FRAC * 5;
   fixp_q = fixp_q * 1275 - FIXP_FRAC * 5;
   *vbuf++ = DIV_ROUND_CLOSEST(fixp_i, FIXP_FRAC * 10);
   *vbuf++ = DIV_ROUND_CLOSEST(fixp_q, FIXP_FRAC * 10);
   break;
  default:
   break;
  }
 }
}
