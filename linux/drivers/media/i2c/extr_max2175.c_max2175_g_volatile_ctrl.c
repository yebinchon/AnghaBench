
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl {int id; int val; int handler; } ;
struct max2175 {int dummy; } ;





 struct max2175* max2175_from_ctrl_hdl (int ) ;
 int max2175_get_lna_gain (struct max2175*) ;
 int max2175_read_bits (struct max2175*,int,int,int) ;

__attribute__((used)) static int max2175_g_volatile_ctrl(struct v4l2_ctrl *ctrl)
{
 struct max2175 *ctx = max2175_from_ctrl_hdl(ctrl->handler);

 switch (ctrl->id) {
 case 129:
  ctrl->val = max2175_get_lna_gain(ctx);
  break;
 case 130:
  ctrl->val = max2175_read_bits(ctx, 49, 4, 0);
  break;
 case 128:
  ctrl->val = (max2175_read_bits(ctx, 60, 7, 6) == 3);
  break;
 }

 return 0;
}
