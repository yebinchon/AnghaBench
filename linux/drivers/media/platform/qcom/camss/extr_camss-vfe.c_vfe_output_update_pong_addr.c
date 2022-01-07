
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct vfe_output {unsigned int wm_num; int * wm_idx; TYPE_2__** buf; } ;
struct vfe_device {TYPE_1__* ops; } ;
struct TYPE_4__ {scalar_t__* addr; } ;
struct TYPE_3__ {int (* bus_reload_wm ) (struct vfe_device*,int ) ;int (* wm_set_pong_addr ) (struct vfe_device*,int ,scalar_t__) ;} ;


 int stub1 (struct vfe_device*,int ,scalar_t__) ;
 int stub2 (struct vfe_device*,int ) ;

__attribute__((used)) static void vfe_output_update_pong_addr(struct vfe_device *vfe,
     struct vfe_output *output, u8 sync)
{
 u32 addr;
 unsigned int i;

 for (i = 0; i < output->wm_num; i++) {
  if (output->buf[1])
   addr = output->buf[1]->addr[i];
  else
   addr = 0;

  vfe->ops->wm_set_pong_addr(vfe, output->wm_idx[i], addr);
  if (sync)
   vfe->ops->bus_reload_wm(vfe, output->wm_idx[i]);
 }

}
