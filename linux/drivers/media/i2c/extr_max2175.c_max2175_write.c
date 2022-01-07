
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max2175 {int regmap; } ;


 int mxm_err (struct max2175*,char*,int,int ,int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int max2175_write(struct max2175 *ctx, u8 idx, u8 val)
{
 int ret;

 ret = regmap_write(ctx->regmap, idx, val);
 if (ret)
  mxm_err(ctx, "write ret(%d): idx 0x%02x val 0x%02x\n",
   ret, idx, val);

 return ret;
}
