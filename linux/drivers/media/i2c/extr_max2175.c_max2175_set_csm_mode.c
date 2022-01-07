
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max2175 {int dummy; } ;
typedef enum max2175_csm_mode { ____Placeholder_max2175_csm_mode } max2175_csm_mode ;



 int max2175_poll_csm_ready (struct max2175*) ;
 int max2175_write_bits (struct max2175*,int ,int,int ,int) ;
 int mxm_dbg (struct max2175*,char*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static bool max2175_set_csm_mode(struct max2175 *ctx,
     enum max2175_csm_mode new_mode)
{
 int ret = max2175_poll_csm_ready(ctx);

 if (ret)
  return ret;

 max2175_write_bits(ctx, 0, 2, 0, new_mode);
 mxm_dbg(ctx, "set csm new mode %d\n", new_mode);


 switch (new_mode) {
 case 128:
  usleep_range(51100, 51500);
  break;




 default:
  break;
 }

 return max2175_poll_csm_ready(ctx);
}
