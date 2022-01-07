
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static void sample_cpy(u8 *dst, const u8 *src, u32 len, bool is_s32)
{
 static const unsigned map[8] = { 0, 1, 5, 4, 2, 3, 6, 7 };
 unsigned idx = 0;

 while (len >= (is_s32 ? 4 : 2)) {
  unsigned offset = map[idx] * 4;
  u32 val = src[offset + 1] + (src[offset + 2] << 8) +
    (src[offset + 3] << 16);

  if (is_s32) {
   *dst++ = 0;
   *dst++ = val & 0xff;
  }
  *dst++ = (val >> 8) & 0xff;
  *dst++ = (val >> 16) & 0xff;
  len -= is_s32 ? 4 : 2;
  idx++;
 }
}
