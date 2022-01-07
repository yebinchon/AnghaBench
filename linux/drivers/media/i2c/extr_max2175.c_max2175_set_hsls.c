
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct max2175 {int dummy; } ;


 int MAX2175_IS_BAND_VHF (struct max2175*) ;
 scalar_t__ MAX2175_LO_BELOW_DESIRED ;
 int max2175_write_bit (struct max2175*,int,int,int) ;
 int mxm_dbg (struct max2175*,char*,scalar_t__) ;

__attribute__((used)) static void max2175_set_hsls(struct max2175 *ctx, u32 lo_pos)
{
 mxm_dbg(ctx, "set_hsls: lo_pos %u\n", lo_pos);

 if ((lo_pos == MAX2175_LO_BELOW_DESIRED) == MAX2175_IS_BAND_VHF(ctx))
  max2175_write_bit(ctx, 5, 4, 1);
 else
  max2175_write_bit(ctx, 5, 4, 0);
}
