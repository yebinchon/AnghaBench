
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct fsl_ifc_ctrl {int gregs; int irq; int nand_irq; } ;


 struct fsl_ifc_ctrl* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int free_irq (int ,struct fsl_ifc_ctrl*) ;
 int iounmap (int ) ;
 int irq_dispose_mapping (int ) ;
 int kfree (struct fsl_ifc_ctrl*) ;

__attribute__((used)) static int fsl_ifc_ctrl_remove(struct platform_device *dev)
{
 struct fsl_ifc_ctrl *ctrl = dev_get_drvdata(&dev->dev);

 free_irq(ctrl->nand_irq, ctrl);
 free_irq(ctrl->irq, ctrl);

 irq_dispose_mapping(ctrl->nand_irq);
 irq_dispose_mapping(ctrl->irq);

 iounmap(ctrl->gregs);

 dev_set_drvdata(&dev->dev, ((void*)0));
 kfree(ctrl);

 return 0;
}
