
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsdfec_dev {int clks; int dev_id; int miscdev; } ;
struct platform_device {int dummy; } ;


 int dev_nrs ;
 int ida_free (int *,int ) ;
 int misc_deregister (int *) ;
 struct xsdfec_dev* platform_get_drvdata (struct platform_device*) ;
 int xsdfec_disable_all_clks (int *) ;

__attribute__((used)) static int xsdfec_remove(struct platform_device *pdev)
{
 struct xsdfec_dev *xsdfec;

 xsdfec = platform_get_drvdata(pdev);
 misc_deregister(&xsdfec->miscdev);
 ida_free(&dev_nrs, xsdfec->dev_id);
 xsdfec_disable_all_clks(&xsdfec->clks);
 return 0;
}
