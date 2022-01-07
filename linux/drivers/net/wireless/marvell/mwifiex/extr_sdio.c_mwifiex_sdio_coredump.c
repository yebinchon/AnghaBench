
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_mmc_card {int work; int work_flags; } ;
struct sdio_func {int dummy; } ;
struct device {int dummy; } ;


 int MWIFIEX_IFACE_WORK_DEVICE_DUMP ;
 struct sdio_func* dev_to_sdio_func (struct device*) ;
 int schedule_work (int *) ;
 struct sdio_mmc_card* sdio_get_drvdata (struct sdio_func*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void mwifiex_sdio_coredump(struct device *dev)
{
 struct sdio_func *func = dev_to_sdio_func(dev);
 struct sdio_mmc_card *card;

 card = sdio_get_drvdata(func);
 if (!test_and_set_bit(MWIFIEX_IFACE_WORK_DEVICE_DUMP,
         &card->work_flags))
  schedule_work(&card->work);
}
