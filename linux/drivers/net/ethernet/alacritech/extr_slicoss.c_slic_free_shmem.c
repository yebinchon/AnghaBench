
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slic_shmem_data {int dummy; } ;
struct slic_shmem {int isr_paddr; struct slic_shmem_data* shmem_data; } ;
struct slic_device {TYPE_1__* pdev; struct slic_shmem shmem; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,int,struct slic_shmem_data*,int ) ;

__attribute__((used)) static void slic_free_shmem(struct slic_device *sdev)
{
 struct slic_shmem *sm = &sdev->shmem;
 struct slic_shmem_data *sm_data = sm->shmem_data;

 dma_free_coherent(&sdev->pdev->dev, sizeof(*sm_data), sm_data,
     sm->isr_paddr);
}
