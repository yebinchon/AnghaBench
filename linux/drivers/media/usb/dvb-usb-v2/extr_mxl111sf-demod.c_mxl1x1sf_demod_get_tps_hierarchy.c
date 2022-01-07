
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mxl111sf_demod_state {int dummy; } ;
typedef enum fe_hierarchy { ____Placeholder_fe_hierarchy } fe_hierarchy ;


 int HIERARCHY_1 ;
 int HIERARCHY_2 ;
 int HIERARCHY_4 ;
 int HIERARCHY_NONE ;
 int V6_TPS_HIERACHY_REG ;
 int V6_TPS_HIERARCHY_INFO_MASK ;
 int mxl111sf_demod_read_reg (struct mxl111sf_demod_state*,int ,int*) ;
 scalar_t__ mxl_fail (int) ;

__attribute__((used)) static
int mxl1x1sf_demod_get_tps_hierarchy(struct mxl111sf_demod_state *state,
         enum fe_hierarchy *hierarchy)
{
 u8 val;
 int ret = mxl111sf_demod_read_reg(state, V6_TPS_HIERACHY_REG, &val);

 if (mxl_fail(ret))
  goto fail;

 switch ((val & V6_TPS_HIERARCHY_INFO_MASK) >> 6) {
 case 0:
  *hierarchy = HIERARCHY_NONE;
  break;
 case 1:
  *hierarchy = HIERARCHY_1;
  break;
 case 2:
  *hierarchy = HIERARCHY_2;
  break;
 case 3:
  *hierarchy = HIERARCHY_4;
  break;
 }
fail:
 return ret;
}
