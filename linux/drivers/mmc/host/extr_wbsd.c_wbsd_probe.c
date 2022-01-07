
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int param_dma ;
 int param_io ;
 int param_irq ;
 int wbsd_init (int *,int ,int ,int ,int ) ;

__attribute__((used)) static int wbsd_probe(struct platform_device *dev)
{

 return wbsd_init(&dev->dev, param_io, param_irq, param_dma, 0);
}
