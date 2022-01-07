
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max2175 {int dummy; } ;


 int max2175_write_bits (struct max2175*,int,int,int ,int) ;
 int mxm_dbg (struct max2175*,char*,char*) ;

__attribute__((used)) static void max2175_i2s_enable(struct max2175 *ctx, bool enable)
{
 if (enable)

  max2175_write_bits(ctx, 104, 3, 0, 2);
 else

  max2175_write_bits(ctx, 104, 3, 0, 9);
 mxm_dbg(ctx, "i2s %sabled\n", enable ? "en" : "dis");
}
