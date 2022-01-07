
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct img_ir_priv {int irq; void* sys_clk; void* clk; void* reg_base; int lock; int * dev; } ;


 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int clk_disable_unprepare (void*) ;
 int clk_prepare_enable (void*) ;
 int dev_err (int *,char*,...) ;
 int dev_warn (int *,char*) ;
 void* devm_clk_get (int *,char*) ;
 void* devm_ioremap_resource (int *,struct resource*) ;
 struct img_ir_priv* devm_kzalloc (int *,int,int ) ;
 int img_ir_ident (struct img_ir_priv*) ;
 int img_ir_isr ;
 int img_ir_probe_hw (struct img_ir_priv*) ;
 int img_ir_probe_raw (struct img_ir_priv*) ;
 int img_ir_remove_hw (struct img_ir_priv*) ;
 int img_ir_remove_raw (struct img_ir_priv*) ;
 int img_ir_setup (struct img_ir_priv*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct img_ir_priv*) ;
 int request_irq (int,int ,int ,char*,struct img_ir_priv*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int img_ir_probe(struct platform_device *pdev)
{
 struct img_ir_priv *priv;
 struct resource *res_regs;
 int irq, error, error2;


 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;


 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 platform_set_drvdata(pdev, priv);
 priv->dev = &pdev->dev;
 spin_lock_init(&priv->lock);


 res_regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 priv->reg_base = devm_ioremap_resource(&pdev->dev, res_regs);
 if (IS_ERR(priv->reg_base))
  return PTR_ERR(priv->reg_base);


 priv->clk = devm_clk_get(&pdev->dev, "core");
 if (IS_ERR(priv->clk))
  dev_warn(&pdev->dev, "cannot get core clock resource\n");


 priv->sys_clk = devm_clk_get(&pdev->dev, "sys");
 if (IS_ERR(priv->sys_clk))
  dev_warn(&pdev->dev, "cannot get sys clock resource\n");





 if (!IS_ERR(priv->sys_clk)) {
  error = clk_prepare_enable(priv->sys_clk);
  if (error) {
   dev_err(&pdev->dev, "cannot enable sys clock\n");
   return error;
  }
 }


 error = img_ir_probe_raw(priv);
 error2 = img_ir_probe_hw(priv);
 if (error && error2) {
  if (error == -ENODEV)
   error = error2;
  goto err_probe;
 }


 priv->irq = irq;
 error = request_irq(priv->irq, img_ir_isr, 0, "img-ir", priv);
 if (error) {
  dev_err(&pdev->dev, "cannot register IRQ %u\n",
   priv->irq);
  error = -EIO;
  goto err_irq;
 }

 img_ir_ident(priv);
 img_ir_setup(priv);

 return 0;

err_irq:
 img_ir_remove_hw(priv);
 img_ir_remove_raw(priv);
err_probe:
 if (!IS_ERR(priv->sys_clk))
  clk_disable_unprepare(priv->sys_clk);
 return error;
}
