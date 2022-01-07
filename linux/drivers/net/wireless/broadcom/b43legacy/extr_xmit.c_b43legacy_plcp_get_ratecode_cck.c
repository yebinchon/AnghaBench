
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int B43legacy_BUG_ON (int) ;





u8 b43legacy_plcp_get_ratecode_cck(const u8 bitrate)
{
 switch (bitrate) {
 case 130:
  return 0x0A;
 case 129:
  return 0x14;
 case 128:
  return 0x37;
 case 131:
  return 0x6E;
 }
 B43legacy_BUG_ON(1);
 return 0;
}
