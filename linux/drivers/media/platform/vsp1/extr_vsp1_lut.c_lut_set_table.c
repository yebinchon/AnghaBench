
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsp1_lut {int lock; int lut; int pool; } ;
struct vsp1_dl_body {int dummy; } ;
struct TYPE_2__ {int * p_u32; } ;
struct v4l2_ctrl {TYPE_1__ p_new; } ;


 int ENOMEM ;
 unsigned int LUT_SIZE ;
 scalar_t__ VI6_LUT_TABLE ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int swap (int ,struct vsp1_dl_body*) ;
 struct vsp1_dl_body* vsp1_dl_body_get (int ) ;
 int vsp1_dl_body_put (struct vsp1_dl_body*) ;
 int vsp1_dl_body_write (struct vsp1_dl_body*,scalar_t__,int ) ;

__attribute__((used)) static int lut_set_table(struct vsp1_lut *lut, struct v4l2_ctrl *ctrl)
{
 struct vsp1_dl_body *dlb;
 unsigned int i;

 dlb = vsp1_dl_body_get(lut->pool);
 if (!dlb)
  return -ENOMEM;

 for (i = 0; i < LUT_SIZE; ++i)
  vsp1_dl_body_write(dlb, VI6_LUT_TABLE + 4 * i,
           ctrl->p_new.p_u32[i]);

 spin_lock_irq(&lut->lock);
 swap(lut->lut, dlb);
 spin_unlock_irq(&lut->lock);

 vsp1_dl_body_put(dlb);
 return 0;
}
