
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vsp1_dl_body {int dummy; } ;
struct vsp1_clu {int lock; int clu; int pool; } ;
struct TYPE_2__ {int * p_u32; } ;
struct v4l2_ctrl {TYPE_1__ p_new; } ;


 unsigned int CLU_SIZE ;
 int ENOMEM ;
 int VI6_CLU_ADDR ;
 int VI6_CLU_DATA ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int swap (int ,struct vsp1_dl_body*) ;
 struct vsp1_dl_body* vsp1_dl_body_get (int ) ;
 int vsp1_dl_body_put (struct vsp1_dl_body*) ;
 int vsp1_dl_body_write (struct vsp1_dl_body*,int ,int ) ;

__attribute__((used)) static int clu_set_table(struct vsp1_clu *clu, struct v4l2_ctrl *ctrl)
{
 struct vsp1_dl_body *dlb;
 unsigned int i;

 dlb = vsp1_dl_body_get(clu->pool);
 if (!dlb)
  return -ENOMEM;

 vsp1_dl_body_write(dlb, VI6_CLU_ADDR, 0);
 for (i = 0; i < CLU_SIZE; ++i)
  vsp1_dl_body_write(dlb, VI6_CLU_DATA, ctrl->p_new.p_u32[i]);

 spin_lock_irq(&clu->lock);
 swap(clu->clu, dlb);
 spin_unlock_irq(&clu->lock);

 vsp1_dl_body_put(dlb);
 return 0;
}
