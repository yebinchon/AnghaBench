
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx88_core {int tvaudio; scalar_t__ last_change; } ;
typedef int s32 ;
typedef int s16 ;


 int AUD_CTL ;
 int EN_FMRADIO_EN_RDS ;
 int MO_AUD_DMACNTRL ;
 int UNSET ;
 int V4L2_TUNER_SUB_LANG2 ;
 int V4L2_TUNER_SUB_MONO ;
 int V4L2_TUNER_SUB_STEREO ;
 int cx_read (int ) ;
 int detect_a2_a2m_eiaj (struct cx88_core*,int *,int ) ;
 int detect_btsc (struct cx88_core*,int *,int ) ;
 int dprintk (int,char*,char*,char*,char*) ;
 int jiffies ;
 int kfree (int *) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int * read_rds_samples (struct cx88_core*,int *) ;
 scalar_t__ time_before (int ,scalar_t__) ;

s32 cx88_dsp_detect_stereo_sap(struct cx88_core *core)
{
 s16 *samples;
 u32 N = 0;
 s32 ret = UNSET;


 if (!(cx_read(MO_AUD_DMACNTRL) & 0x04))
  return ret;
 if (!(cx_read(AUD_CTL) & EN_FMRADIO_EN_RDS))
  return ret;


 if (time_before(jiffies, core->last_change + msecs_to_jiffies(500)))
  return ret;

 samples = read_rds_samples(core, &N);

 if (!samples)
  return ret;

 switch (core->tvaudio) {
 case 138:
 case 136:
 case 135:
 case 129:
  ret = detect_a2_a2m_eiaj(core, samples, N);
  break;
 case 137:
  ret = detect_btsc(core, samples, N);
  break;
 case 128:
 case 133:
 case 130:
 case 131:
 case 134:
 case 132:
  break;
 }

 kfree(samples);

 if (ret != UNSET)
  dprintk(1, "stereo/sap detection result:%s%s%s\n",
   (ret & V4L2_TUNER_SUB_MONO) ? " mono" : "",
   (ret & V4L2_TUNER_SUB_STEREO) ? " stereo" : "",
   (ret & V4L2_TUNER_SUB_LANG2) ? " dual" : "");

 return ret;
}
