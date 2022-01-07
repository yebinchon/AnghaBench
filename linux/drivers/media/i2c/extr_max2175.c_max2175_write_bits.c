
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max2175 {int regmap; } ;


 int GENMASK (int,int) ;
 int mxm_err (struct max2175*,char*,int,int) ;
 int regmap_update_bits (int ,int,int ,int) ;

__attribute__((used)) static int max2175_write_bits(struct max2175 *ctx, u8 idx,
        u8 msb, u8 lsb, u8 newval)
{
 int ret = regmap_update_bits(ctx->regmap, idx, GENMASK(msb, lsb),
         newval << lsb);

 if (ret)
  mxm_err(ctx, "wbits ret(%d): idx 0x%02x\n", ret, idx);

 return ret;
}
