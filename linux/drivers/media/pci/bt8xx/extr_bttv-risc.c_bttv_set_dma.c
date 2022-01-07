
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_11__ {int dma; int * cpu; } ;
struct TYPE_19__ {scalar_t__ frame_irq; TYPE_7__* bottom; TYPE_4__* top; } ;
struct TYPE_12__ {int nr; } ;
struct bttv {int cap_ctl; int loop_irq; int dma_on; TYPE_10__ main; int timeout; TYPE_9__* cvbi; TYPE_8__ curr; TYPE_1__ c; } ;
struct TYPE_16__ {scalar_t__ dma; } ;
struct TYPE_13__ {scalar_t__ dma; } ;
struct TYPE_20__ {TYPE_5__ bottom; TYPE_2__ top; } ;
struct TYPE_17__ {scalar_t__ dma; } ;
struct TYPE_18__ {TYPE_6__ bottom; } ;
struct TYPE_14__ {scalar_t__ dma; } ;
struct TYPE_15__ {TYPE_3__ top; } ;


 int BT848_CAP_CTL ;
 int BT848_GPIO_DMA_CTL ;
 unsigned long BT848_RISC_IRQ ;
 unsigned long BT848_RISC_JUMP ;
 int BT848_RISC_STRT_ADD ;
 scalar_t__ BTTV_TIMEOUT ;
 size_t RISC_SLOT_LOOP ;
 int btand (int,int ) ;
 int btaor (int,int,int ) ;
 int btor (int,int ) ;
 int btwrite (int ,int ) ;
 int cpu_to_le32 (unsigned long) ;
 int d2printk (char*,int ,int,int,unsigned long long,unsigned long long,unsigned long long,unsigned long long) ;
 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

void
bttv_set_dma(struct bttv *btv, int override)
{
 unsigned long cmd;
 int capctl;

 btv->cap_ctl = 0;
 if (((void*)0) != btv->curr.top) btv->cap_ctl |= 0x02;
 if (((void*)0) != btv->curr.bottom) btv->cap_ctl |= 0x01;
 if (((void*)0) != btv->cvbi) btv->cap_ctl |= 0x0c;

 capctl = 0;
 capctl |= (btv->cap_ctl & 0x03) ? 0x03 : 0x00;
 capctl |= (btv->cap_ctl & 0x0c) ? 0x0c : 0x00;
 capctl |= override;

 d2printk("%d: capctl=%x lirq=%d top=%08llx/%08llx even=%08llx/%08llx\n",
   btv->c.nr,capctl,btv->loop_irq,
   btv->cvbi ? (unsigned long long)btv->cvbi->top.dma : 0,
   btv->curr.top ? (unsigned long long)btv->curr.top->top.dma : 0,
   btv->cvbi ? (unsigned long long)btv->cvbi->bottom.dma : 0,
   btv->curr.bottom ? (unsigned long long)btv->curr.bottom->bottom.dma : 0);

 cmd = BT848_RISC_JUMP;
 if (btv->loop_irq) {
  cmd |= BT848_RISC_IRQ;
  cmd |= (btv->loop_irq & 0x0f) << 16;
  cmd |= (~btv->loop_irq & 0x0f) << 20;
 }
 if (btv->curr.frame_irq || btv->loop_irq || btv->cvbi) {
  mod_timer(&btv->timeout, jiffies+BTTV_TIMEOUT);
 } else {
  del_timer(&btv->timeout);
 }
 btv->main.cpu[RISC_SLOT_LOOP] = cpu_to_le32(cmd);

 btaor(capctl, ~0x0f, BT848_CAP_CTL);
 if (capctl) {
  if (btv->dma_on)
   return;
  btwrite(btv->main.dma, BT848_RISC_STRT_ADD);
  btor(3, BT848_GPIO_DMA_CTL);
  btv->dma_on = 1;
 } else {
  if (!btv->dma_on)
   return;
  btand(~3, BT848_GPIO_DMA_CTL);
  btv->dma_on = 0;
 }
 return;
}
