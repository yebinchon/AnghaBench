
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_card {int type; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;






 int add_uevent_var (struct kobj_uevent_env*,char*,...) ;
 int mmc_card_name (struct mmc_card*) ;
 struct mmc_card* mmc_dev_to_card (struct device*) ;

__attribute__((used)) static int
mmc_bus_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct mmc_card *card = mmc_dev_to_card(dev);
 const char *type;
 int retval = 0;

 switch (card->type) {
 case 131:
  type = "MMC";
  break;
 case 130:
  type = "SD";
  break;
 case 129:
  type = "SDIO";
  break;
 case 128:
  type = "SDcombo";
  break;
 default:
  type = ((void*)0);
 }

 if (type) {
  retval = add_uevent_var(env, "MMC_TYPE=%s", type);
  if (retval)
   return retval;
 }

 retval = add_uevent_var(env, "MMC_NAME=%s", mmc_card_name(card));
 if (retval)
  return retval;





 retval = add_uevent_var(env, "MODALIAS=mmc:block");

 return retval;
}
