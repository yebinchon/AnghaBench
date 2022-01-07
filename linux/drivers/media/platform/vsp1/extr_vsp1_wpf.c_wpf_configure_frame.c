
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned int active; unsigned int const pending; int lock; } ;
struct vsp1_rwpf {int alpha; int outfmt; TYPE_1__ flip; } ;
struct vsp1_pipeline {int dummy; } ;
struct vsp1_entity {int subdev; } ;
struct vsp1_dl_list {int dummy; } ;
struct vsp1_dl_body {int dummy; } ;


 int BIT (int ) ;
 int VI6_WPF_OUTFMT ;
 int VI6_WPF_OUTFMT_FLP ;
 int VI6_WPF_OUTFMT_HFLP ;
 int VI6_WPF_OUTFMT_PDV_SHIFT ;
 int WPF_CTRL_HFLIP ;
 int WPF_CTRL_VFLIP ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vsp1_rwpf* to_rwpf (int *) ;
 int vsp1_wpf_write (struct vsp1_rwpf*,struct vsp1_dl_body*,int ,int) ;

__attribute__((used)) static void wpf_configure_frame(struct vsp1_entity *entity,
    struct vsp1_pipeline *pipe,
    struct vsp1_dl_list *dl,
    struct vsp1_dl_body *dlb)
{
 const unsigned int mask = BIT(WPF_CTRL_VFLIP)
    | BIT(WPF_CTRL_HFLIP);
 struct vsp1_rwpf *wpf = to_rwpf(&entity->subdev);
 unsigned long flags;
 u32 outfmt;

 spin_lock_irqsave(&wpf->flip.lock, flags);
 wpf->flip.active = (wpf->flip.active & ~mask)
    | (wpf->flip.pending & mask);
 spin_unlock_irqrestore(&wpf->flip.lock, flags);

 outfmt = (wpf->alpha << VI6_WPF_OUTFMT_PDV_SHIFT) | wpf->outfmt;

 if (wpf->flip.active & BIT(WPF_CTRL_VFLIP))
  outfmt |= VI6_WPF_OUTFMT_FLP;
 if (wpf->flip.active & BIT(WPF_CTRL_HFLIP))
  outfmt |= VI6_WPF_OUTFMT_HFLP;

 vsp1_wpf_write(wpf, dlb, VI6_WPF_OUTFMT, outfmt);
}
