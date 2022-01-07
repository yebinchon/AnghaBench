
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int pismo_width_to_bytes(unsigned int width)
{
 width &= 15;
 if (width > 2)
  return 0;
 return 1 << width;
}
