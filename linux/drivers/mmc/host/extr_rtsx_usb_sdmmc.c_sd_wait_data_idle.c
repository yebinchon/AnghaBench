
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_usb_sdmmc {int ucr; } ;


 int SD_DATA_IDLE ;
 int SD_DATA_STATE ;
 int rtsx_usb_ep0_read_register (int ,int ,int*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void sd_wait_data_idle(struct rtsx_usb_sdmmc *host)
{
 int err, i;
 u8 val = 0;

 for (i = 0; i < 100; i++) {
  err = rtsx_usb_ep0_read_register(host->ucr,
    SD_DATA_STATE, &val);
  if (val & SD_DATA_IDLE)
   return;

  usleep_range(100, 1000);
 }
}
