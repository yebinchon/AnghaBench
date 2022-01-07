
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_irdec {scalar_t__ base; } ;
struct platform_device {int dummy; } ;


 int ZX_IREN ;
 int ZX_IR_ENABLE ;
 scalar_t__ ZX_IR_INTEN ;
 struct zx_irdec* platform_get_drvdata (struct platform_device*) ;
 int writel (int ,scalar_t__) ;
 int zx_irdec_set_mask (struct zx_irdec*,int ,int ,int ) ;

__attribute__((used)) static int zx_irdec_remove(struct platform_device *pdev)
{
 struct zx_irdec *irdec = platform_get_drvdata(pdev);


 zx_irdec_set_mask(irdec, ZX_IR_ENABLE, ZX_IREN, 0);


 writel(0, irdec->base + ZX_IR_INTEN);

 return 0;
}
