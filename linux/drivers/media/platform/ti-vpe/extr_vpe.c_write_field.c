
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static void write_field(u32 *valp, u32 field, u32 mask, int shift)
{
 u32 val = *valp;

 val &= ~(mask << shift);
 val |= (field & mask) << shift;
 *valp = val;
}
