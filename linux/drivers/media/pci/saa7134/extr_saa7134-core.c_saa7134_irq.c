
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * priv_data; } ;
struct saa7134_dev {int has_remote; int name; TYPE_3__* remote; TYPE_2__* mops; TYPE_1__ dmasound; scalar_t__ insuspend; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {int mask_keydown; int mask_keyup; } ;
struct TYPE_5__ {int (* irq_ts_done ) (struct saa7134_dev*,unsigned long) ;} ;


 int IRQ_RETVAL (int) ;
 int SAA7134_IRQ1 ;
 int SAA7134_IRQ2 ;
 int SAA7134_IRQ2_INTE_GPIO16_N ;
 int SAA7134_IRQ2_INTE_GPIO16_P ;
 int SAA7134_IRQ2_INTE_GPIO18_N ;
 int SAA7134_IRQ2_INTE_GPIO18_P ;
 int SAA7134_IRQ2_INTE_PE ;
 int SAA7134_IRQ_REPORT ;
 unsigned long SAA7134_IRQ_REPORT_DONE_RA0 ;
 unsigned long SAA7134_IRQ_REPORT_DONE_RA2 ;
 unsigned long SAA7134_IRQ_REPORT_DONE_RA3 ;
 unsigned long SAA7134_IRQ_REPORT_GPIO16 ;
 unsigned long SAA7134_IRQ_REPORT_GPIO18 ;
 unsigned long SAA7134_IRQ_REPORT_INTL ;
 unsigned long SAA7134_IRQ_REPORT_PE ;
 unsigned long SAA7134_IRQ_REPORT_RDCAP ;
 int SAA7134_IRQ_STATUS ;


 scalar_t__ card_has_mpeg (struct saa7134_dev*) ;
 int irq_dbg (int,char*) ;
 scalar_t__ irq_debug ;
 int pr_warn (char*,int ) ;
 int print_irqstatus (struct saa7134_dev*,int,unsigned long,unsigned long) ;
 int saa7134_input_irq (struct saa7134_dev*) ;
 int saa7134_irq_ts_done (struct saa7134_dev*,unsigned long) ;
 int saa7134_irq_vbi_done (struct saa7134_dev*,unsigned long) ;
 int saa7134_irq_video_done (struct saa7134_dev*,unsigned long) ;
 int saa7134_irq_video_signalchange (struct saa7134_dev*) ;
 int saa_clearl (int ,int ) ;
 unsigned long saa_readl (int ) ;
 int saa_writel (int ,unsigned long) ;
 int stub1 (struct saa7134_dev*,unsigned long) ;

__attribute__((used)) static irqreturn_t saa7134_irq(int irq, void *dev_id)
{
 struct saa7134_dev *dev = (struct saa7134_dev*) dev_id;
 unsigned long report,status;
 int loop, handled = 0;

 if (dev->insuspend)
  goto out;

 for (loop = 0; loop < 10; loop++) {
  report = saa_readl(SAA7134_IRQ_REPORT);
  status = saa_readl(SAA7134_IRQ_STATUS);




  if ((report & SAA7134_IRQ_REPORT_DONE_RA3) &&
   (dev->dmasound.priv_data != ((void*)0)) )
  {
   irq_dbg(2, "preserving DMA sound interrupt\n");
   report &= ~SAA7134_IRQ_REPORT_DONE_RA3;
  }

  if (0 == report) {
   irq_dbg(2, "no (more) work\n");
   goto out;
  }

  handled = 1;
  saa_writel(SAA7134_IRQ_REPORT,report);
  if (irq_debug)
   print_irqstatus(dev,loop,report,status);


  if ((report & SAA7134_IRQ_REPORT_RDCAP) ||
   (report & SAA7134_IRQ_REPORT_INTL))
    saa7134_irq_video_signalchange(dev);


  if ((report & SAA7134_IRQ_REPORT_DONE_RA0) &&
      (status & 0x60) == 0)
   saa7134_irq_video_done(dev,status);

  if ((report & SAA7134_IRQ_REPORT_DONE_RA0) &&
      (status & 0x40) == 0x40)
   saa7134_irq_vbi_done(dev,status);

  if ((report & SAA7134_IRQ_REPORT_DONE_RA2) &&
      card_has_mpeg(dev)) {
   if (dev->mops->irq_ts_done != ((void*)0))
    dev->mops->irq_ts_done(dev, status);
   else
    saa7134_irq_ts_done(dev, status);
  }

  if (report & SAA7134_IRQ_REPORT_GPIO16) {
   switch (dev->has_remote) {
    case 129:
     if (!dev->remote)
      break;
     if (dev->remote->mask_keydown & 0x10000) {
      saa7134_input_irq(dev);
     }
     break;

    case 128:
     break;

    default:
     break;
   }
  }

  if (report & SAA7134_IRQ_REPORT_GPIO18) {
   switch (dev->has_remote) {
    case 129:
     if (!dev->remote)
      break;
     if ((dev->remote->mask_keydown & 0x40000) ||
         (dev->remote->mask_keyup & 0x40000)) {
      saa7134_input_irq(dev);
     }
     break;

    case 128:
     break;

    default:
     break;
   }
  }
 }

 if (10 == loop) {
  print_irqstatus(dev,loop,report,status);
  if (report & SAA7134_IRQ_REPORT_PE) {

   pr_warn("%s/irq: looping -- clearing PE (parity error!) enable bit\n",
    dev->name);
   saa_clearl(SAA7134_IRQ2,SAA7134_IRQ2_INTE_PE);
  } else if (report & SAA7134_IRQ_REPORT_GPIO16) {

   pr_warn("%s/irq: looping -- clearing GPIO16 enable bit\n",
    dev->name);
   saa_clearl(SAA7134_IRQ2, SAA7134_IRQ2_INTE_GPIO16_P);
   saa_clearl(SAA7134_IRQ2, SAA7134_IRQ2_INTE_GPIO16_N);
  } else if (report & SAA7134_IRQ_REPORT_GPIO18) {

   pr_warn("%s/irq: looping -- clearing GPIO18 enable bit\n",
    dev->name);
   saa_clearl(SAA7134_IRQ2, SAA7134_IRQ2_INTE_GPIO18_P);
   saa_clearl(SAA7134_IRQ2, SAA7134_IRQ2_INTE_GPIO18_N);
  } else {

   pr_warn("%s/irq: looping -- clearing all enable bits\n",
    dev->name);
   saa_writel(SAA7134_IRQ1,0);
   saa_writel(SAA7134_IRQ2,0);
  }
 }

 out:
 return IRQ_RETVAL(handled);
}
