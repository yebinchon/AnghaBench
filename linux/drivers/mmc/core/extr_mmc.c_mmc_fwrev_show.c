
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int rev; int fwrev; } ;
struct TYPE_3__ {int fwrev; } ;
struct mmc_card {TYPE_2__ ext_csd; TYPE_1__ cid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int MMC_FIRMWARE_LEN ;
 struct mmc_card* mmc_dev_to_card (struct device*) ;
 int sprintf (char*,char*,int,...) ;

__attribute__((used)) static ssize_t mmc_fwrev_show(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct mmc_card *card = mmc_dev_to_card(dev);

 if (card->ext_csd.rev < 7) {
  return sprintf(buf, "0x%x\n", card->cid.fwrev);
 } else {
  return sprintf(buf, "0x%*phN\n", MMC_FIRMWARE_LEN,
          card->ext_csd.fwrev);
 }
}
