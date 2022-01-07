
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {int dummy; } ;
struct TYPE_2__ {int major; int minor; int rev; } ;
struct aqc111_data {TYPE_1__ fw_ver; } ;


 int AQ_ACCESS_MAC ;
 int AQ_FW_VER_MAJOR ;
 int AQ_FW_VER_MINOR ;
 int AQ_FW_VER_REV ;
 int aqc111_read_cmd (struct usbnet*,int ,int ,int,int,int*) ;

__attribute__((used)) static void aqc111_read_fw_version(struct usbnet *dev,
       struct aqc111_data *aqc111_data)
{
 aqc111_read_cmd(dev, AQ_ACCESS_MAC, AQ_FW_VER_MAJOR,
   1, 1, &aqc111_data->fw_ver.major);
 aqc111_read_cmd(dev, AQ_ACCESS_MAC, AQ_FW_VER_MINOR,
   1, 1, &aqc111_data->fw_ver.minor);
 aqc111_read_cmd(dev, AQ_ACCESS_MAC, AQ_FW_VER_REV,
   1, 1, &aqc111_data->fw_ver.rev);

 if (aqc111_data->fw_ver.major & 0x80)
  aqc111_data->fw_ver.major &= ~0x80;
}
