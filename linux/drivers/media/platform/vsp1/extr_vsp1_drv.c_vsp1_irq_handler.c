
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int pipe; } ;
struct vsp1_rwpf {TYPE_1__ entity; } ;
struct vsp1_device {struct vsp1_rwpf** wpf; TYPE_2__* info; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {unsigned int wpf_count; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int VI6_WFP_IRQ_STA_DFE ;
 int VI6_WFP_IRQ_STA_FRE ;
 int VI6_WPF_IRQ_STA (unsigned int) ;
 int vsp1_pipeline_frame_end (int ) ;
 int vsp1_read (struct vsp1_device*,int ) ;
 int vsp1_write (struct vsp1_device*,int ,int) ;

__attribute__((used)) static irqreturn_t vsp1_irq_handler(int irq, void *data)
{
 u32 mask = VI6_WFP_IRQ_STA_DFE | VI6_WFP_IRQ_STA_FRE;
 struct vsp1_device *vsp1 = data;
 irqreturn_t ret = IRQ_NONE;
 unsigned int i;
 u32 status;

 for (i = 0; i < vsp1->info->wpf_count; ++i) {
  struct vsp1_rwpf *wpf = vsp1->wpf[i];

  if (wpf == ((void*)0))
   continue;

  status = vsp1_read(vsp1, VI6_WPF_IRQ_STA(i));
  vsp1_write(vsp1, VI6_WPF_IRQ_STA(i), ~status & mask);

  if (status & VI6_WFP_IRQ_STA_DFE) {
   vsp1_pipeline_frame_end(wpf->entity.pipe);
   ret = IRQ_HANDLED;
  }
 }

 return ret;
}
