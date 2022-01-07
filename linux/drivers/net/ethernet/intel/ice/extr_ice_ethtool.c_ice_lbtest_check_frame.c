
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static bool ice_lbtest_check_frame(u8 *frame)
{

 if (frame[32] == 0xDE &&
     frame[42] == 0xAD &&
     frame[44] == 0xBE &&
     frame[46] == 0xEF &&
     frame[48] == 0xFF)
  return 1;

 return 0;
}
