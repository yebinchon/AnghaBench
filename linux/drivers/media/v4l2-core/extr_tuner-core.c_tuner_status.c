
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef unsigned long u16 ;
struct tuner {int mode; int radio_freq; int tv_freq; int fe; scalar_t__ std; scalar_t__ standby; } ;
struct dvb_tuner_ops {int (* get_status ) (int *,int*) ;} ;
struct analog_demod_ops {int (* has_signal ) (struct dvb_frontend*,unsigned long*) ;} ;
struct TYPE_2__ {struct analog_demod_ops analog_ops; struct dvb_tuner_ops tuner_ops; } ;
struct dvb_frontend {TYPE_1__ ops; struct tuner* analog_demod_priv; } ;


 int TUNER_STATUS_LOCKED ;
 int TUNER_STATUS_STEREO ;



 int pr_info (char*,...) ;
 int stub1 (int *,int*) ;
 int stub2 (struct dvb_frontend*,unsigned long*) ;

__attribute__((used)) static void tuner_status(struct dvb_frontend *fe)
{
 struct tuner *t = fe->analog_demod_priv;
 unsigned long freq, freq_fraction;
 struct dvb_tuner_ops *fe_tuner_ops = &fe->ops.tuner_ops;
 struct analog_demod_ops *analog_ops = &fe->ops.analog_ops;
 const char *p;

 switch (t->mode) {
 case 128:
  p = "radio";
  break;
 case 129:
  p = "digital TV";
  break;
 case 130:
 default:
  p = "analog TV";
  break;
 }
 if (t->mode == 128) {
  freq = t->radio_freq / 16000;
  freq_fraction = (t->radio_freq % 16000) * 100 / 16000;
 } else {
  freq = t->tv_freq / 16;
  freq_fraction = (t->tv_freq % 16) * 100 / 16;
 }
 pr_info("Tuner mode:      %s%s\n", p,
     t->standby ? " on standby mode" : "");
 pr_info("Frequency:       %lu.%02lu MHz\n", freq, freq_fraction);
 pr_info("Standard:        0x%08lx\n", (unsigned long)t->std);
 if (t->mode != 128)
  return;
 if (fe_tuner_ops->get_status) {
  u32 tuner_status;

  fe_tuner_ops->get_status(&t->fe, &tuner_status);
  if (tuner_status & TUNER_STATUS_LOCKED)
   pr_info("Tuner is locked.\n");
  if (tuner_status & TUNER_STATUS_STEREO)
   pr_info("Stereo:          yes\n");
 }
 if (analog_ops->has_signal) {
  u16 signal;

  if (!analog_ops->has_signal(fe, &signal))
   pr_info("Signal strength: %hu\n", signal);
 }
}
