
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucc_hdlc_private {TYPE_1__* utdm; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int * siram; int * si_regs; } ;


 struct ucc_hdlc_private* dev_get_drvdata (int *) ;
 int dev_info (int *,char*) ;
 int iounmap (int *) ;
 int kfree (struct ucc_hdlc_private*) ;
 int uhdlc_memclean (struct ucc_hdlc_private*) ;

__attribute__((used)) static int ucc_hdlc_remove(struct platform_device *pdev)
{
 struct ucc_hdlc_private *priv = dev_get_drvdata(&pdev->dev);

 uhdlc_memclean(priv);

 if (priv->utdm->si_regs) {
  iounmap(priv->utdm->si_regs);
  priv->utdm->si_regs = ((void*)0);
 }

 if (priv->utdm->siram) {
  iounmap(priv->utdm->siram);
  priv->utdm->siram = ((void*)0);
 }
 kfree(priv);

 dev_info(&pdev->dev, "UCC based hdlc module removed\n");

 return 0;
}
