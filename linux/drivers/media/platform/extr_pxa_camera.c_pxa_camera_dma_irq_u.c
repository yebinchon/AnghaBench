
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_camera_dev {int dummy; } ;


 int DMA_U ;
 int pxa_camera_dma_irq (struct pxa_camera_dev*,int ) ;

__attribute__((used)) static void pxa_camera_dma_irq_u(void *data)
{
 struct pxa_camera_dev *pcdev = data;

 pxa_camera_dma_irq(pcdev, DMA_U);
}
