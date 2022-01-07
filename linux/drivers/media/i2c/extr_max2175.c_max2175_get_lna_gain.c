
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct max2175 {int dummy; } ;
typedef enum max2175_band { ____Placeholder_max2175_band } max2175_band ;





 int max2175_read_bits (struct max2175*,int,int,int ) ;

__attribute__((used)) static u32 max2175_get_lna_gain(struct max2175 *ctx)
{
 enum max2175_band band = max2175_read_bits(ctx, 5, 1, 0);

 switch (band) {
 case 130:
  return max2175_read_bits(ctx, 51, 3, 0);
 case 129:
  return max2175_read_bits(ctx, 50, 3, 0);
 case 128:
  return max2175_read_bits(ctx, 52, 5, 0);
 default:
  return 0;
 }
}
