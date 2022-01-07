
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int renesas_sdhi_probe (struct platform_device*,int *) ;
 int renesas_sdhi_sys_dmac_dma_ops ;

__attribute__((used)) static int renesas_sdhi_sys_dmac_probe(struct platform_device *pdev)
{
 return renesas_sdhi_probe(pdev, &renesas_sdhi_sys_dmac_dma_ops);
}
