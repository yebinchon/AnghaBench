
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ v4l2_std_id ;
typedef int u64 ;
typedef int u32 ;
struct cx88_core {scalar_t__ tvnorm; int chroma_agc; TYPE_2__* dvbdev; TYPE_1__* v4ldev; } ;
struct TYPE_4__ {int vb2_mpegq; } ;
struct TYPE_3__ {int vb2_vbiq; int vb2_vidq; } ;


 int EBUSY ;
 int MO_AGC_BURST ;
 int MO_HTOTAL ;
 int MO_INPUT_FORMAT ;
 int MO_OUTPUT_FORMAT ;
 int MO_SCONV_REG ;
 int MO_SUB_STEP ;
 int MO_SUB_STEP_DR ;
 int MO_VBI_PACKET ;
 int V4L2_FIELD_INTERLACED ;
 scalar_t__ V4L2_STD_NTSC ;
 scalar_t__ V4L2_STD_NTSC_443 ;
 scalar_t__ V4L2_STD_NTSC_M_JP ;
 scalar_t__ V4L2_STD_PAL_60 ;
 scalar_t__ V4L2_STD_PAL_M ;
 scalar_t__ V4L2_STD_PAL_N ;
 scalar_t__ V4L2_STD_PAL_Nc ;
 scalar_t__ V4L2_STD_SECAM ;
 int VideoFormatNTSC ;
 int VideoFormatNTSC443 ;
 int VideoFormatNTSCJapan ;
 int VideoFormatPAL ;
 int VideoFormatPAL60 ;
 int VideoFormatPALM ;
 int VideoFormatPALN ;
 int VideoFormatPALNC ;
 int VideoFormatSECAM ;
 int call_all (struct cx88_core*,int ,int ,scalar_t__) ;
 int cx88_set_scale (struct cx88_core*,int,int,int ) ;
 int cx_andor (int ,int,int) ;
 int cx_read (int ) ;
 int cx_write (int ,int) ;
 int do_div (int,int) ;
 int dprintk (int,char*,int,int,...) ;
 int norm_fsc8 (scalar_t__) ;
 int norm_htotal (scalar_t__) ;
 int norm_vbipack (scalar_t__) ;
 int s_std ;
 int set_pll (struct cx88_core*,int,int) ;
 int set_tvaudio (struct cx88_core*) ;
 int v4l2_ctrl_grab (int ,int) ;
 int v4l2_norm_to_name (scalar_t__) ;
 scalar_t__ vb2_is_busy (int *) ;
 int video ;
 int xtal ;

int cx88_set_tvnorm(struct cx88_core *core, v4l2_std_id norm)
{
 u32 fsc8;
 u32 adc_clock;
 u32 vdec_clock;
 u32 step_db, step_dr;
 u64 tmp64;
 u32 bdelay, agcdelay, htotal;
 u32 cxiformat, cxoformat;

 if (norm == core->tvnorm)
  return 0;
 if (core->v4ldev && (vb2_is_busy(&core->v4ldev->vb2_vidq) ||
        vb2_is_busy(&core->v4ldev->vb2_vbiq)))
  return -EBUSY;
 if (core->dvbdev && vb2_is_busy(&core->dvbdev->vb2_mpegq))
  return -EBUSY;
 core->tvnorm = norm;
 fsc8 = norm_fsc8(norm);
 adc_clock = xtal;
 vdec_clock = fsc8;
 step_db = fsc8;
 step_dr = fsc8;

 if (norm & V4L2_STD_NTSC_M_JP) {
  cxiformat = VideoFormatNTSCJapan;
  cxoformat = 0x181f0008;
 } else if (norm & V4L2_STD_NTSC_443) {
  cxiformat = VideoFormatNTSC443;
  cxoformat = 0x181f0008;
 } else if (norm & V4L2_STD_PAL_M) {
  cxiformat = VideoFormatPALM;
  cxoformat = 0x1c1f0008;
 } else if (norm & V4L2_STD_PAL_N) {
  cxiformat = VideoFormatPALN;
  cxoformat = 0x1c1f0008;
 } else if (norm & V4L2_STD_PAL_Nc) {
  cxiformat = VideoFormatPALNC;
  cxoformat = 0x1c1f0008;
 } else if (norm & V4L2_STD_PAL_60) {
  cxiformat = VideoFormatPAL60;
  cxoformat = 0x181f0008;
 } else if (norm & V4L2_STD_NTSC) {
  cxiformat = VideoFormatNTSC;
  cxoformat = 0x181f0008;
 } else if (norm & V4L2_STD_SECAM) {
  step_db = 4250000 * 8;
  step_dr = 4406250 * 8;

  cxiformat = VideoFormatSECAM;
  cxoformat = 0x181f0008;
 } else {
  cxiformat = VideoFormatPAL;
  cxoformat = 0x181f0008;
 }

 dprintk(1, "set_tvnorm: \"%s\" fsc8=%d adc=%d vdec=%d db/dr=%d/%d\n",
  v4l2_norm_to_name(core->tvnorm), fsc8, adc_clock, vdec_clock,
  step_db, step_dr);
 set_pll(core, 2, vdec_clock);

 dprintk(1, "set_tvnorm: MO_INPUT_FORMAT  0x%08x [old=0x%08x]\n",
  cxiformat, cx_read(MO_INPUT_FORMAT) & 0x0f);




 cx_andor(MO_INPUT_FORMAT, 0x40f,
   norm & V4L2_STD_SECAM ? cxiformat : cxiformat | 0x400);


 dprintk(1, "set_tvnorm: MO_OUTPUT_FORMAT 0x%08x [old=0x%08x]\n",
  cxoformat, cx_read(MO_OUTPUT_FORMAT));
 cx_write(MO_OUTPUT_FORMAT, cxoformat);


 tmp64 = adc_clock * (u64)(1 << 17);
 do_div(tmp64, vdec_clock);
 dprintk(1, "set_tvnorm: MO_SCONV_REG     0x%08x [old=0x%08x]\n",
  (u32)tmp64, cx_read(MO_SCONV_REG));
 cx_write(MO_SCONV_REG, (u32)tmp64);


 tmp64 = step_db * (u64)(1 << 22);
 do_div(tmp64, vdec_clock);
 dprintk(1, "set_tvnorm: MO_SUB_STEP      0x%08x [old=0x%08x]\n",
  (u32)tmp64, cx_read(MO_SUB_STEP));
 cx_write(MO_SUB_STEP, (u32)tmp64);


 tmp64 = step_dr * (u64)(1 << 22);
 do_div(tmp64, vdec_clock);
 dprintk(1, "set_tvnorm: MO_SUB_STEP_DR   0x%08x [old=0x%08x]\n",
  (u32)tmp64, cx_read(MO_SUB_STEP_DR));
 cx_write(MO_SUB_STEP_DR, (u32)tmp64);


 bdelay = vdec_clock * 65 / 20000000 + 21;
 agcdelay = vdec_clock * 68 / 20000000 + 15;
 dprintk(1,
  "set_tvnorm: MO_AGC_BURST     0x%08x [old=0x%08x,bdelay=%d,agcdelay=%d]\n",
  (bdelay << 8) | agcdelay, cx_read(MO_AGC_BURST),
  bdelay, agcdelay);
 cx_write(MO_AGC_BURST, (bdelay << 8) | agcdelay);


 tmp64 = norm_htotal(norm) * (u64)vdec_clock;
 do_div(tmp64, fsc8);
 htotal = (u32)tmp64;
 dprintk(1,
  "set_tvnorm: MO_HTOTAL        0x%08x [old=0x%08x,htotal=%d]\n",
  htotal, cx_read(MO_HTOTAL), (u32)tmp64);
 cx_andor(MO_HTOTAL, 0x07ff, htotal);



 cx_write(MO_VBI_PACKET, (10 << 11) | norm_vbipack(norm));


 cx88_set_scale(core, 320, 240, V4L2_FIELD_INTERLACED);


 set_tvaudio(core);


 call_all(core, video, s_std, norm);





 v4l2_ctrl_grab(core->chroma_agc, cxiformat == VideoFormatSECAM);


 return 0;
}
