
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline const char *get_fw_dbg_mode_string(int mode)
{
 switch (mode) {
 case 128:
  return "SMEM";
 case 131:
  return "EXTERNAL_DRAM";
 case 130:
  return "MARBH";
 case 129:
  return "MIPI";
 default:
  return "UNKNOWN";
 }
}
