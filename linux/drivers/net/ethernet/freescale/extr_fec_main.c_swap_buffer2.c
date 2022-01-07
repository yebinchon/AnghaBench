
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int swab32p (unsigned int*) ;

__attribute__((used)) static void swap_buffer2(void *dst_buf, void *src_buf, int len)
{
 int i;
 unsigned int *src = src_buf;
 unsigned int *dst = dst_buf;

 for (i = 0; i < len; i += 4, src++, dst++)
  *dst = swab32p(src);
}
