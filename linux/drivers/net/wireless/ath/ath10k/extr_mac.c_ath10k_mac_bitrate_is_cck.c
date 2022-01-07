
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool ath10k_mac_bitrate_is_cck(int bitrate)
{
 switch (bitrate) {
 case 10:
 case 20:
 case 55:
 case 110:
  return 1;
 }

 return 0;
}
