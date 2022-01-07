
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct ccf_private {TYPE_2__* err_regs; TYPE_1__* info; } ;
struct TYPE_4__ {int errinten; int errdis; } ;
struct TYPE_3__ {int version; } ;




 struct ccf_private* dev_get_drvdata (int *) ;
 int iowrite32be (int ,int *) ;

__attribute__((used)) static int ccf_remove(struct platform_device *pdev)
{
 struct ccf_private *ccf = dev_get_drvdata(&pdev->dev);

 switch (ccf->info->version) {
 case 129:
  iowrite32be(0, &ccf->err_regs->errdis);
  break;

 case 128:





  iowrite32be(0, &ccf->err_regs->errinten);
  break;
 }

 return 0;
}
