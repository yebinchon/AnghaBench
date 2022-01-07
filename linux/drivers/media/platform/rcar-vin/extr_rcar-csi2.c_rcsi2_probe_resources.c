
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct rcar_csi2 {int rstc; int base; } ;
struct platform_device {int dev; } ;


 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int KBUILD_MODNAME ;
 int PTR_ERR (int ) ;
 int PTR_ERR_OR_ZERO (int ) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 int devm_request_threaded_irq (int *,int,int ,int ,int ,int ,struct rcar_csi2*) ;
 int devm_reset_control_get (int *,int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int rcsi2_irq ;
 int rcsi2_irq_thread ;

__attribute__((used)) static int rcsi2_probe_resources(struct rcar_csi2 *priv,
     struct platform_device *pdev)
{
 struct resource *res;
 int irq, ret;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 priv->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(priv->base))
  return PTR_ERR(priv->base);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 ret = devm_request_threaded_irq(&pdev->dev, irq, rcsi2_irq,
     rcsi2_irq_thread, IRQF_SHARED,
     KBUILD_MODNAME, priv);
 if (ret)
  return ret;

 priv->rstc = devm_reset_control_get(&pdev->dev, ((void*)0));

 return PTR_ERR_OR_ZERO(priv->rstc);
}
