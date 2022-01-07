
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int e1000_check_lbtest_frame(const unsigned char *data,
        unsigned int frame_size)
{
 frame_size &= ~1;
 if (*(data + 3) == 0xFF) {
  if ((*(data + frame_size / 2 + 10) == 0xBE) &&
      (*(data + frame_size / 2 + 12) == 0xAF)) {
   return 0;
  }
 }
 return 13;
}
