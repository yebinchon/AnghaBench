
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sta2x11_vip {int tcount; TYPE_2__* active; int sequence; int bcount; int overflow; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {int timestamp; } ;
struct TYPE_4__ {TYPE_3__ vb2_buf; scalar_t__ sequence; } ;
struct TYPE_5__ {TYPE_1__ vb; } ;


 int DVP_CTL ;
 unsigned int DVP_CTL_ENA ;
 int DVP_ITS ;
 unsigned int DVP_IT_FIFO ;
 unsigned int DVP_IT_VSB ;
 unsigned int DVP_IT_VST ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int VB2_BUF_STATE_DONE ;
 int ktime_get_ns () ;
 int pr_info (char*) ;
 unsigned int reg_read (struct sta2x11_vip*,int ) ;
 int reg_write (struct sta2x11_vip*,int ,unsigned int) ;
 int vb2_buffer_done (TYPE_3__*,int ) ;

__attribute__((used)) static irqreturn_t vip_irq(int irq, struct sta2x11_vip *vip)
{
 unsigned int status;

 status = reg_read(vip, DVP_ITS);

 if (!status)
  return IRQ_NONE;

 if (status & DVP_IT_FIFO)
  if (vip->overflow++ > 5)
   pr_info("VIP: fifo overflow\n");

 if ((status & DVP_IT_VST) && (status & DVP_IT_VSB)) {


  return IRQ_HANDLED;
 }

 if (status & DVP_IT_VST)
  if ((++vip->tcount) < 2)
   return IRQ_HANDLED;
 if (status & DVP_IT_VSB) {
  vip->bcount++;
  return IRQ_HANDLED;
 }

 if (vip->active) {

  reg_write(vip, DVP_CTL, reg_read(vip, DVP_CTL) & ~DVP_CTL_ENA);

  vip->active->vb.vb2_buf.timestamp = ktime_get_ns();
  vip->active->vb.sequence = vip->sequence++;
  vb2_buffer_done(&vip->active->vb.vb2_buf, VB2_BUF_STATE_DONE);
 }

 return IRQ_HANDLED;
}
