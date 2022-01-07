
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i40e_vf {int vf_id; TYPE_2__* pf; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int dev_warn (int *,char*,int ) ;
 scalar_t__ i40e_reset_vf (struct i40e_vf*,int) ;
 int i40e_vc_notify_vf_reset (struct i40e_vf*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static inline void i40e_vc_disable_vf(struct i40e_vf *vf)
{
 int i;

 i40e_vc_notify_vf_reset(vf);






 for (i = 0; i < 20; i++) {
  if (i40e_reset_vf(vf, 0))
   return;
  usleep_range(10000, 20000);
 }

 dev_warn(&vf->pf->pdev->dev,
   "Failed to initiate reset for VF %d after 200 milliseconds\n",
   vf->vf_id);
}
