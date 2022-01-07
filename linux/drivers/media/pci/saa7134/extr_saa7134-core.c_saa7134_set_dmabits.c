
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {scalar_t__ curr; } ;
struct TYPE_9__ {scalar_t__ dma_running; } ;
struct TYPE_8__ {scalar_t__ curr; } ;
struct TYPE_6__ {scalar_t__ curr; } ;
struct saa7134_dev {int field; int ovfield; TYPE_5__ ts_q; TYPE_4__ dmasound; TYPE_3__ vbi_q; scalar_t__ ovenable; TYPE_2__* fmt; TYPE_1__ video_q; scalar_t__ insuspend; int slock; } ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
struct TYPE_7__ {scalar_t__ planar; } ;


 int SAA7134_FIELD_HANDLING (int ) ;
 int SAA7134_IRQ1 ;
 int SAA7134_IRQ1_INTE_RA0_0 ;
 int SAA7134_IRQ1_INTE_RA0_1 ;
 int SAA7134_IRQ1_INTE_RA0_4 ;
 int SAA7134_IRQ1_INTE_RA0_5 ;
 int SAA7134_IRQ1_INTE_RA0_6 ;
 int SAA7134_IRQ1_INTE_RA0_7 ;
 int SAA7134_IRQ1_INTE_RA2_0 ;
 int SAA7134_IRQ1_INTE_RA2_1 ;
 int SAA7134_IRQ1_INTE_RA3_0 ;
 int SAA7134_IRQ1_INTE_RA3_1 ;
 int SAA7134_MAIN_CTRL ;
 int SAA7134_MAIN_CTRL_TE0 ;
 int SAA7134_MAIN_CTRL_TE1 ;
 int SAA7134_MAIN_CTRL_TE2 ;
 int SAA7134_MAIN_CTRL_TE3 ;
 int SAA7134_MAIN_CTRL_TE4 ;
 int SAA7134_MAIN_CTRL_TE5 ;
 int SAA7134_MAIN_CTRL_TE6 ;
 int SAA7134_REGION_ENABLE ;
 int SAA7134_TASK_CONDITIONS (int ) ;
 int TASK_A ;
 int TASK_B ;
 int V4L2_FIELD_ANY ;
 scalar_t__ V4L2_FIELD_HAS_BOTH (int) ;
 int V4L2_FIELD_TOP ;
 int assert_spin_locked (int *) ;
 int core_dbg (char*,int,int,int,char*) ;
 int saa_andorl (int ,int,int) ;
 int saa_writeb (int ,int) ;
 int saa_writel (int ,int) ;

int saa7134_set_dmabits(struct saa7134_dev *dev)
{
 u32 split, task=0, ctrl=0, irq=0;
 enum v4l2_field cap = V4L2_FIELD_ANY;
 enum v4l2_field ov = V4L2_FIELD_ANY;

 assert_spin_locked(&dev->slock);

 if (dev->insuspend)
  return 0;


 if (dev->video_q.curr) {
  task |= 0x01;
  ctrl |= SAA7134_MAIN_CTRL_TE0;
  irq |= SAA7134_IRQ1_INTE_RA0_1 |
   SAA7134_IRQ1_INTE_RA0_0;
  cap = dev->field;
 }


 if (dev->video_q.curr && dev->fmt->planar) {
  ctrl |= SAA7134_MAIN_CTRL_TE4 |
   SAA7134_MAIN_CTRL_TE5;
 }


 if (dev->ovenable) {
  task |= 0x10;
  ctrl |= SAA7134_MAIN_CTRL_TE1;
  ov = dev->ovfield;
 }


 if (dev->vbi_q.curr) {
  task |= 0x22;
  ctrl |= SAA7134_MAIN_CTRL_TE2 |
   SAA7134_MAIN_CTRL_TE3;
  irq |= SAA7134_IRQ1_INTE_RA0_7 |
   SAA7134_IRQ1_INTE_RA0_6 |
   SAA7134_IRQ1_INTE_RA0_5 |
   SAA7134_IRQ1_INTE_RA0_4;
 }


 if (dev->dmasound.dma_running) {
  ctrl |= SAA7134_MAIN_CTRL_TE6;
  irq |= SAA7134_IRQ1_INTE_RA3_1 |
   SAA7134_IRQ1_INTE_RA3_0;
 }


 if (dev->ts_q.curr) {
  ctrl |= SAA7134_MAIN_CTRL_TE5;
  irq |= SAA7134_IRQ1_INTE_RA2_1 |
   SAA7134_IRQ1_INTE_RA2_0;
 }


 if (V4L2_FIELD_HAS_BOTH(cap) || V4L2_FIELD_HAS_BOTH(ov) || cap == ov) {

  saa_writeb(SAA7134_TASK_CONDITIONS(TASK_A), 0x0d);
  saa_writeb(SAA7134_TASK_CONDITIONS(TASK_B), 0x0d);
  saa_writeb(SAA7134_FIELD_HANDLING(TASK_A), 0x02);
  saa_writeb(SAA7134_FIELD_HANDLING(TASK_B), 0x02);
  split = 0;
 } else {

  if (V4L2_FIELD_TOP == cap) {

   saa_writeb(SAA7134_TASK_CONDITIONS(TASK_A), 0x0d);
   saa_writeb(SAA7134_TASK_CONDITIONS(TASK_B), 0x0e);
  } else {

   saa_writeb(SAA7134_TASK_CONDITIONS(TASK_A), 0x0e);
   saa_writeb(SAA7134_TASK_CONDITIONS(TASK_B), 0x0d);
  }
  saa_writeb(SAA7134_FIELD_HANDLING(TASK_A), 0x01);
  saa_writeb(SAA7134_FIELD_HANDLING(TASK_B), 0x01);
  split = 1;
 }


 saa_writeb(SAA7134_REGION_ENABLE, task);
 saa_writel(SAA7134_IRQ1, irq);
 saa_andorl(SAA7134_MAIN_CTRL,
     SAA7134_MAIN_CTRL_TE0 |
     SAA7134_MAIN_CTRL_TE1 |
     SAA7134_MAIN_CTRL_TE2 |
     SAA7134_MAIN_CTRL_TE3 |
     SAA7134_MAIN_CTRL_TE4 |
     SAA7134_MAIN_CTRL_TE5 |
     SAA7134_MAIN_CTRL_TE6,
     ctrl);
 core_dbg("dmabits: task=0x%02x ctrl=0x%02x irq=0x%x split=%s\n",
  task, ctrl, irq, split ? "no" : "yes");

 return 0;
}
