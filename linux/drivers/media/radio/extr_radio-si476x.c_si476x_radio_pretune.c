
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si476x_tune_freq_args {int zifsr; int hd; void* freq; int antcap; int smoothmetrics; int tunemode; int injside; } ;
struct si476x_radio {int core; TYPE_1__* ops; } ;
typedef enum si476x_func { ____Placeholder_si476x_func } si476x_func ;
struct TYPE_2__ {int (* tune_freq ) (int ,struct si476x_tune_freq_args*) ;} ;


 int EINVAL ;
 int FREQ_MUL ;


 int SI476X_INJSIDE_AUTO ;
 int SI476X_SM_INITIALIZE_AUDIO ;
 int SI476X_TM_VALIDATED_NORMAL_TUNE ;
 int WARN (int,char*) ;
 int stub1 (int ,struct si476x_tune_freq_args*) ;
 int stub2 (int ,struct si476x_tune_freq_args*) ;
 void* v4l2_to_si476x (int ,double) ;

__attribute__((used)) static int si476x_radio_pretune(struct si476x_radio *radio,
    enum si476x_func func)
{
 int retval;

 struct si476x_tune_freq_args args = {
  .zifsr = 0,
  .hd = 0,
  .injside = SI476X_INJSIDE_AUTO,
  .tunemode = SI476X_TM_VALIDATED_NORMAL_TUNE,
  .smoothmetrics = SI476X_SM_INITIALIZE_AUDIO,
  .antcap = 0,
 };

 switch (func) {
 case 128:
  args.freq = v4l2_to_si476x(radio->core,
        92 * FREQ_MUL);
  retval = radio->ops->tune_freq(radio->core, &args);
  break;
 case 129:
  args.freq = v4l2_to_si476x(radio->core,
        0.6 * FREQ_MUL);
  retval = radio->ops->tune_freq(radio->core, &args);
  break;
 default:
  WARN(1, "Unexpected tuner function value\n");
  retval = -EINVAL;
 }

 return retval;
}
