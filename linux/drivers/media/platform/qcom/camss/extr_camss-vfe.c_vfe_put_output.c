
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfe_output {unsigned int wm_num; int state; int * wm_idx; } ;
struct vfe_line {struct vfe_output output; } ;
struct vfe_device {int output_lock; } ;


 int VFE_OUTPUT_OFF ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vfe_device* to_vfe (struct vfe_line*) ;
 int vfe_release_wm (struct vfe_device*,int ) ;

__attribute__((used)) static int vfe_put_output(struct vfe_line *line)
{
 struct vfe_device *vfe = to_vfe(line);
 struct vfe_output *output = &line->output;
 unsigned long flags;
 unsigned int i;

 spin_lock_irqsave(&vfe->output_lock, flags);

 for (i = 0; i < output->wm_num; i++)
  vfe_release_wm(vfe, output->wm_idx[i]);

 output->state = VFE_OUTPUT_OFF;

 spin_unlock_irqrestore(&vfe->output_lock, flags);
 return 0;
}
