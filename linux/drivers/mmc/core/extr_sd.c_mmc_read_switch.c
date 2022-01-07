
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int sd3_bus_mode; int sd3_drv_type; int sd3_curr_limit; int hs_max_dtr; } ;
struct TYPE_5__ {scalar_t__ sda_vsn; scalar_t__ sda_spec3; } ;
struct TYPE_4__ {int cmdclass; } ;
struct mmc_card {TYPE_3__ sw_caps; TYPE_2__ scr; int host; TYPE_1__ csd; } ;


 int CCC_SWITCH ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 int HIGH_SPEED_MAX_DTR ;
 scalar_t__ SCR_SPEC_VER_1 ;
 int SD_MODE_HIGH_SPEED ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int mmc_hostname (int ) ;
 int mmc_sd_switch (struct mmc_card*,int ,int ,int ,int*) ;
 int pr_warn (char*,int ) ;

__attribute__((used)) static int mmc_read_switch(struct mmc_card *card)
{
 int err;
 u8 *status;

 if (card->scr.sda_vsn < SCR_SPEC_VER_1)
  return 0;

 if (!(card->csd.cmdclass & CCC_SWITCH)) {
  pr_warn("%s: card lacks mandatory switch function, performance might suffer\n",
   mmc_hostname(card->host));
  return 0;
 }

 status = kmalloc(64, GFP_KERNEL);
 if (!status)
  return -ENOMEM;






 err = mmc_sd_switch(card, 0, 0, 0, status);
 if (err) {




  if (err != -EINVAL && err != -ENOSYS && err != -EFAULT)
   goto out;

  pr_warn("%s: problem reading Bus Speed modes\n",
   mmc_hostname(card->host));
  err = 0;

  goto out;
 }

 if (status[13] & SD_MODE_HIGH_SPEED)
  card->sw_caps.hs_max_dtr = HIGH_SPEED_MAX_DTR;

 if (card->scr.sda_spec3) {
  card->sw_caps.sd3_bus_mode = status[13];

  card->sw_caps.sd3_drv_type = status[9];
  card->sw_caps.sd3_curr_limit = status[7] | status[6] << 8;
 }

out:
 kfree(status);

 return err;
}
