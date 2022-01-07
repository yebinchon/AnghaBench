
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pvr2_ctl_type { ____Placeholder_pvr2_ctl_type } pvr2_ctl_type ;







__attribute__((used)) static const char *get_ctrl_typename(enum pvr2_ctl_type tp)
{
 switch (tp) {
 case 128: return "integer";
 case 129: return "enum";
 case 130: return "boolean";
 case 131: return "bitmask";
 }
 return "";
}
