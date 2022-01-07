
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct ti_st_plat_data {int (* chip_disable ) (struct kim_data_s*) ;} ;
struct kim_data_s {int nshutdown; int ldisc_installed; TYPE_3__* kim_pdev; scalar_t__ ldisc_install; TYPE_1__* core_data; } ;
struct TYPE_5__ {int kobj; struct ti_st_plat_data* platform_data; } ;
struct TYPE_6__ {TYPE_2__ dev; } ;
struct TYPE_4__ {struct tty_struct* tty; } ;


 long ETIMEDOUT ;
 int GPIO_HIGH ;
 int GPIO_LOW ;
 int LDISC_TIME ;
 int gpio_set_value_cansleep (int ,int ) ;
 int mdelay (int) ;
 int msecs_to_jiffies (int ) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 int reinit_completion (int *) ;
 int stub1 (struct kim_data_s*) ;
 int sysfs_notify (int *,int *,char*) ;
 int tty_driver_flush_buffer (struct tty_struct*) ;
 int tty_ldisc_flush (struct tty_struct*) ;
 long wait_for_completion_interruptible_timeout (int *,int ) ;

long st_kim_stop(void *kim_data)
{
 long err = 0;
 struct kim_data_s *kim_gdata = (struct kim_data_s *)kim_data;
 struct ti_st_plat_data *pdata =
  kim_gdata->kim_pdev->dev.platform_data;
 struct tty_struct *tty = kim_gdata->core_data->tty;

 reinit_completion(&kim_gdata->ldisc_installed);

 if (tty) {

  tty_ldisc_flush(tty);
  tty_driver_flush_buffer(tty);
 }


 pr_info("ldisc_install = 0");
 kim_gdata->ldisc_install = 0;
 sysfs_notify(&kim_gdata->kim_pdev->dev.kobj, ((void*)0), "install");


 err = wait_for_completion_interruptible_timeout(
  &kim_gdata->ldisc_installed, msecs_to_jiffies(LDISC_TIME));
 if (!err) {
  pr_err(" timed out waiting for ldisc to be un-installed");
  err = -ETIMEDOUT;
 }


 gpio_set_value_cansleep(kim_gdata->nshutdown, GPIO_LOW);
 mdelay(1);
 gpio_set_value_cansleep(kim_gdata->nshutdown, GPIO_HIGH);
 mdelay(1);
 gpio_set_value_cansleep(kim_gdata->nshutdown, GPIO_LOW);


 if (pdata->chip_disable)
  pdata->chip_disable(kim_gdata);
 return err;
}
