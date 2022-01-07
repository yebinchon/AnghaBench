
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EINVAL ;
int wil_wmi2spec_ch(u8 wmi_ch, u8 *spec_ch)
{
 switch (wmi_ch) {
 case 137:
  *spec_ch = 1;
  break;
 case 133:
  *spec_ch = 2;
  break;
 case 132:
  *spec_ch = 3;
  break;
 case 131:
  *spec_ch = 4;
  break;
 case 130:
  *spec_ch = 5;
  break;
 case 129:
  *spec_ch = 6;
  break;
 case 128:
  *spec_ch = 9;
  break;
 case 136:
  *spec_ch = 10;
  break;
 case 135:
  *spec_ch = 11;
  break;
 case 134:
  *spec_ch = 12;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
