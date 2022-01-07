
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bs {int* ptr; int* buf_end; int bits_left; } ;



__attribute__((used)) static void bs_write1(struct bs *s, u32 bit)
{
 if (s->ptr < s->buf_end) {
  *s->ptr <<= 1;
  *s->ptr |= bit;
  s->bits_left--;
  if (s->bits_left == 0) {
   s->ptr++;
   s->bits_left = 8;
  }
 }
}
