
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct omap2_onenand {scalar_t__ dma_chan; int mtd; } ;


 struct omap2_onenand* dev_get_drvdata (int *) ;
 int dma_release_channel (scalar_t__) ;
 int omap2_onenand_shutdown (struct platform_device*) ;
 int onenand_release (int *) ;

__attribute__((used)) static int omap2_onenand_remove(struct platform_device *pdev)
{
 struct omap2_onenand *c = dev_get_drvdata(&pdev->dev);

 onenand_release(&c->mtd);
 if (c->dma_chan)
  dma_release_channel(c->dma_chan);
 omap2_onenand_shutdown(pdev);

 return 0;
}
