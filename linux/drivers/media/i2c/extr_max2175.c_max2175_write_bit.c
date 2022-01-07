
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max2175 {int dummy; } ;


 int max2175_write_bits (struct max2175*,int ,int ,int ,int ) ;

__attribute__((used)) static int max2175_write_bit(struct max2175 *ctx, u8 idx, u8 bit, u8 newval)
{
 return max2175_write_bits(ctx, idx, bit, bit, newval);
}
