
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int nr; } ;
struct TYPE_4__ {int * cpu; scalar_t__ dma; } ;
struct bttv {TYPE_1__ c; TYPE_2__ main; } ;


 int BT848_DSTATUS ;
 int BT848_DSTATUS_HLOC ;
 int RISC_SLOT_O_FIELD ;
 int RISC_SLOT_O_VBI ;
 int btread (int ) ;
 int dump_stack () ;
 scalar_t__ le32_to_cpu (int ) ;
 int pr_notice (char*,int ) ;
 int pr_warn (char*,int ,unsigned long,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static void bttv_irq_debug_low_latency(struct bttv *btv, u32 rc)
{
 pr_warn("%d: irq: skipped frame [main=%lx,o_vbi=%lx,o_field=%lx,rc=%lx]\n",
  btv->c.nr,
  (unsigned long)btv->main.dma,
  (unsigned long)le32_to_cpu(btv->main.cpu[RISC_SLOT_O_VBI+1]),
  (unsigned long)le32_to_cpu(btv->main.cpu[RISC_SLOT_O_FIELD+1]),
  (unsigned long)rc);

 if (0 == (btread(BT848_DSTATUS) & BT848_DSTATUS_HLOC)) {
  pr_notice("%d: Oh, there (temporarily?) is no input signal. Ok, then this is harmless, don't worry ;)\n",
     btv->c.nr);
  return;
 }
 pr_notice("%d: Uhm. Looks like we have unusual high IRQ latencies\n",
    btv->c.nr);
 pr_notice("%d: Lets try to catch the culprit red-handed ...\n",
    btv->c.nr);
 dump_stack();
}
