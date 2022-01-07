
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int index; } ;
struct vsp1_rwpf {TYPE_1__ entity; } ;
struct vsp1_dl_body {int dummy; } ;


 int VI6_WPF_OFFSET ;
 int vsp1_dl_body_write (struct vsp1_dl_body*,scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void vsp1_wpf_write(struct vsp1_rwpf *wpf,
      struct vsp1_dl_body *dlb, u32 reg, u32 data)
{
 vsp1_dl_body_write(dlb, reg + wpf->entity.index * VI6_WPF_OFFSET, data);
}
