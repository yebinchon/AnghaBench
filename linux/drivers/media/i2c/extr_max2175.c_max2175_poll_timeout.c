
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct max2175 {int regmap; } ;


 scalar_t__ max2175_get_bitval (unsigned int,scalar_t__,scalar_t__) ;
 int regmap_read_poll_timeout (int ,scalar_t__,unsigned int,int,int,int ) ;

__attribute__((used)) static int max2175_poll_timeout(struct max2175 *ctx, u8 idx, u8 msb, u8 lsb,
    u8 exp_bitval, u32 timeout_us)
{
 unsigned int val;

 return regmap_read_poll_timeout(ctx->regmap, idx, val,
   (max2175_get_bitval(val, msb, lsb) == exp_bitval),
   1000, timeout_us);
}
