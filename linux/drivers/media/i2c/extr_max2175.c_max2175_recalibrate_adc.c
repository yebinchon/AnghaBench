
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max2175 {int dummy; } ;


 int max2175_poll_timeout (struct max2175*,int,int,int,int,int) ;
 int max2175_write (struct max2175*,int,int) ;
 int mxm_err (struct max2175*,char*) ;

__attribute__((used)) static int max2175_recalibrate_adc(struct max2175 *ctx)
{
 int ret;


 max2175_write(ctx, 150, 0xff);
 max2175_write(ctx, 205, 0xff);
 max2175_write(ctx, 147, 0x20);
 max2175_write(ctx, 147, 0x00);
 max2175_write(ctx, 202, 0x20);
 max2175_write(ctx, 202, 0x00);

 ret = max2175_poll_timeout(ctx, 69, 4, 3, 3, 50000);
 if (ret)
  mxm_err(ctx, "adc recalibration failed\n");

 return ret;
}
