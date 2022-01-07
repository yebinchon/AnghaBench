
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si476x_radio {TYPE_1__* core; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int is_alive; } ;


 int SI476X_POWER_DOWN ;
 scalar_t__ atomic_read (int *) ;
 int si476x_core_set_power_state (TYPE_1__*,int ) ;
 scalar_t__ v4l2_fh_is_singular_file (struct file*) ;
 int v4l2_fh_release (struct file*) ;
 struct si476x_radio* video_drvdata (struct file*) ;

__attribute__((used)) static int si476x_radio_fops_release(struct file *file)
{
 int err;
 struct si476x_radio *radio = video_drvdata(file);

 if (v4l2_fh_is_singular_file(file) &&
     atomic_read(&radio->core->is_alive))
  si476x_core_set_power_state(radio->core,
         SI476X_POWER_DOWN);

 err = v4l2_fh_release(file);

 return err;
}
