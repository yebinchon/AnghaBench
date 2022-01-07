
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct rtsx_usb_sdmmc {int ucr; } ;
 int SD_CFG1 ;
 int rtsx_usb_write_register (int ,int ,int,unsigned char const) ;

__attribute__((used)) static int sd_set_bus_width(struct rtsx_usb_sdmmc *host,
  unsigned char bus_width)
{
 int err = 0;
 static const u8 width[] = {
  [133] = 130,
  [132] = 129,
  [131] = 128,
 };

 if (bus_width <= 131)
  err = rtsx_usb_write_register(host->ucr, SD_CFG1,
    0x03, width[bus_width]);

 return err;
}
