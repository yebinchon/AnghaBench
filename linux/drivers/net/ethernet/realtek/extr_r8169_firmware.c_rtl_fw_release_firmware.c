
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_fw {int fw; } ;


 int release_firmware (int ) ;

void rtl_fw_release_firmware(struct rtl_fw *rtl_fw)
{
 release_firmware(rtl_fw->fw);
}
