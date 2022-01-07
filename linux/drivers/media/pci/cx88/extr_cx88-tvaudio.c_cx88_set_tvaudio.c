
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i2sinputcntl; } ;
struct cx88_core {int tvaudio; int use_nicam; TYPE_1__ board; int audiomode_current; } ;


 int AUD_I2SCNTL ;
 int AUD_I2SINPUTCNTL ;
 int EN_A2_FORCE_MONO1 ;
 int EN_BTSC_AUTO_STEREO ;
 int EN_I2SIN_ENABLE ;
 int EN_NICAM_AUTO_STEREO ;
 int V4L2_TUNER_MODE_MONO ;
 int cx88_detect_nicam (struct cx88_core*) ;
 int cx_write (int ,int) ;
 int pr_info (char*,int) ;
 int radio_deemphasis ;
 int set_audio_finish (struct cx88_core*,int ) ;
 int set_audio_standard_A2 (struct cx88_core*,int ) ;
 int set_audio_standard_BTSC (struct cx88_core*,int ,int ) ;
 int set_audio_standard_EIAJ (struct cx88_core*) ;
 int set_audio_standard_FM (struct cx88_core*,int ) ;
 int set_audio_standard_NICAM (struct cx88_core*,int ) ;
 int set_audio_start (struct cx88_core*,int) ;

void cx88_set_tvaudio(struct cx88_core *core)
{
 switch (core->tvaudio) {
 case 137:
  set_audio_standard_BTSC(core, 0, EN_BTSC_AUTO_STEREO);
  break;
 case 138:
 case 136:
 case 129:
 case 133:
 case 130:

  set_audio_standard_A2(core, EN_A2_FORCE_MONO1);





  set_audio_standard_NICAM(core, EN_NICAM_AUTO_STEREO);
  if (cx88_detect_nicam(core) == 0) {

   set_audio_standard_A2(core, EN_A2_FORCE_MONO1);
   core->audiomode_current = V4L2_TUNER_MODE_MONO;
   core->use_nicam = 0;
  } else {
   core->use_nicam = 1;
  }
  break;
 case 135:
  set_audio_standard_EIAJ(core);
  break;
 case 134:
  set_audio_standard_FM(core, radio_deemphasis);
  break;
 case 132:
  set_audio_start(core, 0x01);





  cx_write(AUD_I2SINPUTCNTL, core->board.i2sinputcntl);

  cx_write(AUD_I2SCNTL, 0x1);
  set_audio_finish(core, EN_I2SIN_ENABLE);
  break;
 case 128:
 case 131:
  pr_info("unknown tv audio mode [%d]\n", core->tvaudio);
  break;
 }
}
