
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max2175 {int dummy; } ;


 int max2175_get_bitval (int ,int ,int ) ;
 scalar_t__ max2175_read (struct max2175*,int ,int *) ;

__attribute__((used)) static u8 max2175_read_bits(struct max2175 *ctx, u8 idx, u8 msb, u8 lsb)
{
 u8 val;

 if (max2175_read(ctx, idx, &val))
  return 0;

 return max2175_get_bitval(val, msb, lsb);
}
