
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbsp {int pos; int size; int* buf; } ;


 int EINVAL ;

__attribute__((used)) static inline int rbsp_write_bit(struct rbsp *rbsp, int bit)
{
 int shift = 7 - (rbsp->pos % 8);
 int ofs = rbsp->pos++ / 8;

 if (ofs >= rbsp->size)
  return -EINVAL;

 rbsp->buf[ofs] &= ~(1 << shift);
 rbsp->buf[ofs] |= bit << shift;

 return 0;
}
