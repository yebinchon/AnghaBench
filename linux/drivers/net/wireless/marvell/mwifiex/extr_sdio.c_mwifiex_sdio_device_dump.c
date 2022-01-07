
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdio_mmc_card {int work; int work_flags; } ;
struct mwifiex_adapter {struct sdio_mmc_card* card; } ;


 int MWIFIEX_IFACE_WORK_DEVICE_DUMP ;
 int schedule_work (int *) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void mwifiex_sdio_device_dump(struct mwifiex_adapter *adapter)
{
 struct sdio_mmc_card *card = adapter->card;

 if (!test_and_set_bit(MWIFIEX_IFACE_WORK_DEVICE_DUMP,
         &card->work_flags))
  schedule_work(&card->work);
}
