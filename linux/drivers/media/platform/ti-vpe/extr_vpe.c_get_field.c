
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static int get_field(u32 value, u32 mask, int shift)
{
 return (value & (mask << shift)) >> shift;
}
