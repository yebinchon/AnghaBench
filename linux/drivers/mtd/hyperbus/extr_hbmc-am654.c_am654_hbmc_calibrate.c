
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_info {int dummy; } ;
struct hyperbus_device {struct map_info map; } ;
struct cfi_private {int interleave; int device_type; } ;


 int AM654_HBMC_CALIB_COUNT ;
 int CFI_DEVICETYPE_X16 ;
 int cfi_qry_mode_off (int ,struct map_info*,struct cfi_private*) ;
 int cfi_qry_present (struct map_info*,int ,struct cfi_private*) ;
 int cfi_send_gen_cmd (int,int,int ,struct map_info*,struct cfi_private*,int ,int *) ;

__attribute__((used)) static int am654_hbmc_calibrate(struct hyperbus_device *hbdev)
{
 struct map_info *map = &hbdev->map;
 struct cfi_private cfi;
 int count = AM654_HBMC_CALIB_COUNT;
 int pass_count = 0;
 int ret;

 cfi.interleave = 1;
 cfi.device_type = CFI_DEVICETYPE_X16;
 cfi_send_gen_cmd(0xF0, 0, 0, map, &cfi, cfi.device_type, ((void*)0));
 cfi_send_gen_cmd(0x98, 0x55, 0, map, &cfi, cfi.device_type, ((void*)0));

 while (count--) {
  ret = cfi_qry_present(map, 0, &cfi);
  if (ret)
   pass_count++;
  else
   pass_count = 0;
  if (pass_count == 5)
   break;
 }

 cfi_qry_mode_off(0, map, &cfi);

 return ret;
}
