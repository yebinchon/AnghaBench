
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xc5000_fw_cfg {int dummy; } ;




 struct xc5000_fw_cfg const xc5000a_1_6_114 ;
 struct xc5000_fw_cfg const xc5000c_41_024_5 ;

__attribute__((used)) static inline const struct xc5000_fw_cfg *xc5000_assign_firmware(int chip_id)
{
 switch (chip_id) {
 default:
 case 129:
  return &xc5000a_1_6_114;
 case 128:
  return &xc5000c_41_024_5;
 }
}
