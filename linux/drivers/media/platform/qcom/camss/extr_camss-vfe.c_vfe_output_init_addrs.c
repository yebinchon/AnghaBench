
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct vfe_output {unsigned int wm_num; int * wm_idx; TYPE_1__** buf; scalar_t__ active_buf; } ;
struct vfe_device {TYPE_2__* ops; } ;
struct TYPE_4__ {int (* bus_reload_wm ) (struct vfe_device*,int ) ;int (* wm_set_pong_addr ) (struct vfe_device*,int ,scalar_t__) ;int (* wm_set_ping_addr ) (struct vfe_device*,int ,scalar_t__) ;} ;
struct TYPE_3__ {scalar_t__* addr; } ;


 int stub1 (struct vfe_device*,int ,scalar_t__) ;
 int stub2 (struct vfe_device*,int ,scalar_t__) ;
 int stub3 (struct vfe_device*,int ) ;

__attribute__((used)) static void vfe_output_init_addrs(struct vfe_device *vfe,
      struct vfe_output *output, u8 sync)
{
 u32 ping_addr;
 u32 pong_addr;
 unsigned int i;

 output->active_buf = 0;

 for (i = 0; i < output->wm_num; i++) {
  if (output->buf[0])
   ping_addr = output->buf[0]->addr[i];
  else
   ping_addr = 0;

  if (output->buf[1])
   pong_addr = output->buf[1]->addr[i];
  else
   pong_addr = ping_addr;

  vfe->ops->wm_set_ping_addr(vfe, output->wm_idx[i], ping_addr);
  vfe->ops->wm_set_pong_addr(vfe, output->wm_idx[i], pong_addr);
  if (sync)
   vfe->ops->bus_reload_wm(vfe, output->wm_idx[i]);
 }
}
