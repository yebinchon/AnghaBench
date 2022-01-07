
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum madera_type { ____Placeholder_madera_type } madera_type ;
const char *madera_name_from_type(enum madera_type type)
{
 switch (type) {
 case 135:
  return "CS47L15";
 case 134:
  return "CS47L35";
 case 133:
  return "CS47L85";
 case 132:
  return "CS47L90";
 case 131:
  return "CS47L91";
 case 136:
  return "CS42L92";
 case 130:
  return "CS47L92";
 case 129:
  return "CS47L93";
 case 128:
  return "WM1840";
 default:
  return "Unknown";
 }
}
