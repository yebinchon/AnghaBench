
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_veu_dev {scalar_t__ xaction; int m2m_ctx; int m2m_dev; scalar_t__ aborting; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ MEM2MEM_DEF_TRANSLEN ;
 int sh_veu_device_run (struct sh_veu_dev*) ;
 int v4l2_m2m_job_finish (int ,int ) ;

__attribute__((used)) static irqreturn_t sh_veu_bh(int irq, void *dev_id)
{
 struct sh_veu_dev *veu = dev_id;

 if (veu->xaction == MEM2MEM_DEF_TRANSLEN || veu->aborting) {
  v4l2_m2m_job_finish(veu->m2m_dev, veu->m2m_ctx);
  veu->xaction = 0;
 } else {
  sh_veu_device_run(veu);
 }

 return IRQ_HANDLED;
}
