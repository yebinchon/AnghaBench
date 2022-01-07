
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct au1550nd_ctx {int base; int chip; } ;


 int IORESOURCE_MEM ;
 int iounmap (int ) ;
 int kfree (struct au1550nd_ctx*) ;
 int nand_release (int *) ;
 struct au1550nd_ctx* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (int ,int) ;

__attribute__((used)) static int au1550nd_remove(struct platform_device *pdev)
{
 struct au1550nd_ctx *ctx = platform_get_drvdata(pdev);
 struct resource *r = platform_get_resource(pdev, IORESOURCE_MEM, 0);

 nand_release(&ctx->chip);
 iounmap(ctx->base);
 release_mem_region(r->start, 0x1000);
 kfree(ctx);
 return 0;
}
