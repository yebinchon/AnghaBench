
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct max2175 {int regmap; } ;


 int mxm_err (struct max2175*,char*,int,int ) ;
 int regmap_read (int ,int ,int *) ;

__attribute__((used)) static int max2175_read(struct max2175 *ctx, u8 idx, u8 *val)
{
 u32 regval;
 int ret;

 ret = regmap_read(ctx->regmap, idx, &regval);
 if (ret)
  mxm_err(ctx, "read ret(%d): idx 0x%02x\n", ret, idx);
 else
  *val = regval;

 return ret;
}
