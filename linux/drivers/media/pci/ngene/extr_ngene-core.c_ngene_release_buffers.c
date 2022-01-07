
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngene {struct ngene* vin_buf; struct ngene* ain_buf; struct ngene* tsin_buf; struct ngene* tsout_buf; scalar_t__ iomem; } ;


 int free_common_buffers (struct ngene*) ;
 int iounmap (scalar_t__) ;
 int vfree (struct ngene*) ;

__attribute__((used)) static void ngene_release_buffers(struct ngene *dev)
{
 if (dev->iomem)
  iounmap(dev->iomem);
 free_common_buffers(dev);
 vfree(dev->tsout_buf);
 vfree(dev->tsin_buf);
 vfree(dev->ain_buf);
 vfree(dev->vin_buf);
 vfree(dev);
}
