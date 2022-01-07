
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slic_shmem_data {int isr; } ;
struct slic_shmem {struct slic_shmem_data* shmem_data; } ;
struct slic_device {int napi; struct slic_shmem shmem; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SLIC_ICR_INT_MASK ;
 int SLIC_REG_ICR ;
 int SLIC_REG_ISR ;
 int dma_rmb () ;
 int napi_schedule_irqoff (int *) ;
 int slic_flush_write (struct slic_device*) ;
 int slic_write (struct slic_device*,int ,int ) ;
 int wmb () ;

__attribute__((used)) static irqreturn_t slic_irq(int irq, void *dev_id)
{
 struct slic_device *sdev = dev_id;
 struct slic_shmem *sm = &sdev->shmem;
 struct slic_shmem_data *sm_data = sm->shmem_data;

 slic_write(sdev, SLIC_REG_ICR, SLIC_ICR_INT_MASK);
 slic_flush_write(sdev);

 wmb();

 if (!sm_data->isr) {
  dma_rmb();

  slic_write(sdev, SLIC_REG_ISR, 0);
  slic_flush_write(sdev);
  return IRQ_NONE;
 }

 napi_schedule_irqoff(&sdev->napi);

 return IRQ_HANDLED;
}
