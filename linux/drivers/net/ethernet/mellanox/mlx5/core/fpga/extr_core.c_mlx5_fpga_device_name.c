
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;







__attribute__((used)) static const char *mlx5_fpga_device_name(u32 device)
{
 switch (device) {
 case 131:
  return "ku040";
 case 130:
  return "ku060";
 case 129:
  return "ku060_2";
 case 128:
 default:
  return "unknown";
 }
}
