
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int coherent_dma_mask; void* platform_data; int parent; int release; } ;
struct platform_device {char* name; unsigned int num_resources; TYPE_1__ dev; struct resource* resource; int id; } ;
struct sm501_device {struct platform_device pdev; } ;
struct sm501_devdata {int dev; int pdev_id; } ;
struct resource {int dummy; } ;


 int GFP_KERNEL ;
 struct sm501_device* kzalloc (int,int ) ;
 int sm501_device_release ;

__attribute__((used)) static struct platform_device *
sm501_create_subdev(struct sm501_devdata *sm, char *name,
      unsigned int res_count, unsigned int platform_data_size)
{
 struct sm501_device *smdev;

 smdev = kzalloc(sizeof(struct sm501_device) +
   (sizeof(struct resource) * res_count) +
   platform_data_size, GFP_KERNEL);
 if (!smdev)
  return ((void*)0);

 smdev->pdev.dev.release = sm501_device_release;

 smdev->pdev.name = name;
 smdev->pdev.id = sm->pdev_id;
 smdev->pdev.dev.parent = sm->dev;
 smdev->pdev.dev.coherent_dma_mask = 0xffffffff;

 if (res_count) {
  smdev->pdev.resource = (struct resource *)(smdev+1);
  smdev->pdev.num_resources = res_count;
 }
 if (platform_data_size)
  smdev->pdev.dev.platform_data = (void *)(smdev+1);

 return &smdev->pdev;
}
