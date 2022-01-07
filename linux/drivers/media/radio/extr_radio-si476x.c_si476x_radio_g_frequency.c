
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_frequency {scalar_t__ tuner; scalar_t__ type; int frequency; } ;
struct si476x_rsq_status_report {int readfreq; } ;
struct si476x_rsq_status_args {int primary; int rsqack; int attune; int cancel; int stcack; } ;
struct si476x_radio {int core; TYPE_1__* ops; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int (* rsq_status ) (int ,struct si476x_rsq_status_args*,struct si476x_rsq_status_report*) ;} ;


 int EINVAL ;
 scalar_t__ V4L2_TUNER_RADIO ;
 int si476x_core_lock (int ) ;
 int si476x_core_unlock (int ) ;
 int si476x_to_v4l2 (int ,int ) ;
 int stub1 (int ,struct si476x_rsq_status_args*,struct si476x_rsq_status_report*) ;
 struct si476x_radio* video_drvdata (struct file*) ;

__attribute__((used)) static int si476x_radio_g_frequency(struct file *file, void *priv,
         struct v4l2_frequency *f)
{
 int err;
 struct si476x_radio *radio = video_drvdata(file);

 if (f->tuner != 0 ||
     f->type != V4L2_TUNER_RADIO)
  return -EINVAL;

 si476x_core_lock(radio->core);

 if (radio->ops->rsq_status) {
  struct si476x_rsq_status_report report;
  struct si476x_rsq_status_args args = {
   .primary = 0,
   .rsqack = 0,
   .attune = 1,
   .cancel = 0,
   .stcack = 0,
  };

  err = radio->ops->rsq_status(radio->core, &args, &report);
  if (!err)
   f->frequency = si476x_to_v4l2(radio->core,
            report.readfreq);
 } else {
  err = -EINVAL;
 }

 si476x_core_unlock(radio->core);

 return err;
}
