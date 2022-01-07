
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max2175 {int dummy; } ;
typedef enum max2175_csm_mode { ____Placeholder_max2175_csm_mode } max2175_csm_mode ;


 int MAX2175_LOAD_TO_BUFFER ;
 int MAX2175_PRESET_TUNE ;
 int max2175_set_csm_mode (struct max2175*,int ) ;
 int mxm_dbg (struct max2175*,char*,int) ;

__attribute__((used)) static int max2175_csm_action(struct max2175 *ctx,
         enum max2175_csm_mode action)
{
 int ret;

 mxm_dbg(ctx, "csm_action: %d\n", action);


 ret = max2175_set_csm_mode(ctx, MAX2175_LOAD_TO_BUFFER);
 if (ret)
  return ret;

 return max2175_set_csm_mode(ctx, MAX2175_PRESET_TUNE);
}
