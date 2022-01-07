
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void word_memcpy_tocard(unsigned long tp, const void *fp, int count)
{
 volatile unsigned short *to = (void *)tp;
 const unsigned short *from = fp;

 count++;
 count /= 2;

 while (count--)
  *to++ = *from++;
}
