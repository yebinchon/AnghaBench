
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vip_buffer {scalar_t__ dma; } ;
struct TYPE_2__ {scalar_t__ field; int width; } ;
struct sta2x11_vip {int slock; TYPE_1__ format; } ;


 int DVP_CTL ;
 int DVP_CTL_ENA ;
 int DVP_VBP ;
 int DVP_VTP ;
 scalar_t__ V4L2_FIELD_INTERLACED ;
 int reg_read (struct sta2x11_vip*,int ) ;
 int reg_write (struct sta2x11_vip*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void start_dma(struct sta2x11_vip *vip, struct vip_buffer *vip_buf)
{
 unsigned long offset = 0;

 if (vip->format.field == V4L2_FIELD_INTERLACED)
  offset = vip->format.width * 2;

 spin_lock_irq(&vip->slock);

 reg_write(vip, DVP_CTL, reg_read(vip, DVP_CTL) | DVP_CTL_ENA);

 reg_write(vip, DVP_VTP, (u32)vip_buf->dma);
 reg_write(vip, DVP_VBP, (u32)vip_buf->dma + offset);
 spin_unlock_irq(&vip->slock);
}
