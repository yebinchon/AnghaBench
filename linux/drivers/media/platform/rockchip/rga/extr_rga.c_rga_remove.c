
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_rga {int dev; int v4l2_dev; int vfd; int m2m_dev; scalar_t__ dst_mmu_pages; scalar_t__ src_mmu_pages; int cmdbuf_phy; int cmdbuf_virt; } ;
struct platform_device {int dummy; } ;


 int DMA_ATTR_WRITE_COMBINE ;
 int RGA_CMDBUF_SIZE ;
 int dma_free_attrs (int ,int ,int ,int ,int ) ;
 int free_pages (unsigned long,int) ;
 struct rockchip_rga* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 int v4l2_device_unregister (int *) ;
 int v4l2_info (int *,char*) ;
 int v4l2_m2m_release (int ) ;
 int video_unregister_device (int ) ;

__attribute__((used)) static int rga_remove(struct platform_device *pdev)
{
 struct rockchip_rga *rga = platform_get_drvdata(pdev);

 dma_free_attrs(rga->dev, RGA_CMDBUF_SIZE, rga->cmdbuf_virt,
         rga->cmdbuf_phy, DMA_ATTR_WRITE_COMBINE);

 free_pages((unsigned long)rga->src_mmu_pages, 3);
 free_pages((unsigned long)rga->dst_mmu_pages, 3);

 v4l2_info(&rga->v4l2_dev, "Removing\n");

 v4l2_m2m_release(rga->m2m_dev);
 video_unregister_device(rga->vfd);
 v4l2_device_unregister(&rga->v4l2_dev);

 pm_runtime_disable(rga->dev);

 return 0;
}
