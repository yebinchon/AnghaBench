
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static void mask_spec(u8 *mask, u8 *val, size_t size)
{
 unsigned int i;

 for (i = 0; i < size; i++, mask++, val++)
  *((u8 *)val) = *((u8 *)mask) & *((u8 *)val);
}
