
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {int dsr; scalar_t__ dsr_req; } ;
struct TYPE_2__ {scalar_t__ dsr_imp; } ;
struct mmc_card {TYPE_1__ csd; struct mmc_host* host; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct mmc_card* mmc_dev_to_card (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t mmc_dsr_show(struct device *dev,
                           struct device_attribute *attr,
                           char *buf)
{
       struct mmc_card *card = mmc_dev_to_card(dev);
       struct mmc_host *host = card->host;

       if (card->csd.dsr_imp && host->dsr_req)
               return sprintf(buf, "0x%x\n", host->dsr);
       else

               return sprintf(buf, "0x%x\n", 0x404);
}
