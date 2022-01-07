
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_usb_sdmmc {int ucr; } ;


 int SD_CFG1 ;
 int SD_CLK_DIVIDE_128 ;
 int SD_CLK_DIVIDE_MASK ;
 int rtsx_usb_write_register (int ,int ,int ,int ) ;

__attribute__((used)) static inline void sd_enable_initial_mode(struct rtsx_usb_sdmmc *host)
{
 rtsx_usb_write_register(host->ucr, SD_CFG1,
   SD_CLK_DIVIDE_MASK, SD_CLK_DIVIDE_128);
}
