
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 map_sd_drive(int idx)
{
 u8 sd_drive[4] = {
  0x01,
  0x02,
  0x05,
  0x03
 };

 return sd_drive[idx];
}
