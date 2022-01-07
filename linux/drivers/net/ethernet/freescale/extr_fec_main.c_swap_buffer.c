
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int swab32s (unsigned int*) ;

__attribute__((used)) static void swap_buffer(void *bufaddr, int len)
{
 int i;
 unsigned int *buf = bufaddr;

 for (i = 0; i < len; i += 4, buf++)
  swab32s(buf);
}
