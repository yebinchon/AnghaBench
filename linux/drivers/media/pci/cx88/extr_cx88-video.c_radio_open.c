
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_3__ {scalar_t__ audioroute; int gpio2; int gpio1; int gpio0; int gpio3; } ;
struct TYPE_4__ {TYPE_1__ radio; } ;
struct cx88_core {int tvaudio; TYPE_2__ board; scalar_t__ sd_wm8775; } ;
struct cx8800_dev {struct cx88_core* core; } ;


 int MO_GP0_IO ;
 int MO_GP1_IO ;
 int MO_GP2_IO ;
 int MO_GP3_IO ;
 int V4L2_TUNER_MODE_STEREO ;
 int WW_FM ;
 int WW_I2SADC ;
 int audio ;
 int call_all (struct cx88_core*,int ,int ,...) ;
 int cx88_set_stereo (struct cx88_core*,int ,int) ;
 int cx88_set_tvaudio (struct cx88_core*) ;
 int cx_write (int ,int ) ;
 int s_radio ;
 int s_routing ;
 int tuner ;
 int v4l2_fh_open (struct file*) ;
 struct cx8800_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int radio_open(struct file *file)
{
 struct cx8800_dev *dev = video_drvdata(file);
 struct cx88_core *core = dev->core;
 int ret = v4l2_fh_open(file);

 if (ret)
  return ret;

 cx_write(MO_GP3_IO, core->board.radio.gpio3);
 cx_write(MO_GP0_IO, core->board.radio.gpio0);
 cx_write(MO_GP1_IO, core->board.radio.gpio1);
 cx_write(MO_GP2_IO, core->board.radio.gpio2);
 if (core->board.radio.audioroute) {
  if (core->sd_wm8775) {
   call_all(core, audio, s_routing,
     core->board.radio.audioroute, 0, 0);
  }

  core->tvaudio = WW_I2SADC;
  cx88_set_tvaudio(core);
 } else {

  core->tvaudio = WW_FM;
  cx88_set_tvaudio(core);
  cx88_set_stereo(core, V4L2_TUNER_MODE_STEREO, 1);
 }
 call_all(core, tuner, s_radio);
 return 0;
}
