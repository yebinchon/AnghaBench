
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max2175 {int dummy; } ;


 int max2175_poll_timeout (struct max2175*,int,int,int,int,int) ;
 int max2175_write_bit (struct max2175*,int,int,int) ;
 int mxm_err (struct max2175*,char*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int max2175_init_power_manager(struct max2175 *ctx)
{
 int ret;


 max2175_write_bit(ctx, 99, 2, 0);
 usleep_range(1000, 1500);
 max2175_write_bit(ctx, 99, 2, 1);


 ret = max2175_poll_timeout(ctx, 69, 7, 7, 1, 50000);
 if (ret)
  mxm_err(ctx, "init pm failed\n");

 return ret;
}
