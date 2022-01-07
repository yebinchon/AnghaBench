
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int owner; int * ops; struct device* dev; } ;
struct mmc_pwrseq_sd8787 {TYPE_1__ pwrseq; void* reset_gpio; void* pwrdn_gpio; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int THIS_MODULE ;
 void* devm_gpiod_get (struct device*,char*,int ) ;
 struct mmc_pwrseq_sd8787* devm_kzalloc (struct device*,int,int ) ;
 int mmc_pwrseq_register (TYPE_1__*) ;
 int mmc_pwrseq_sd8787_ops ;
 int platform_set_drvdata (struct platform_device*,struct mmc_pwrseq_sd8787*) ;

__attribute__((used)) static int mmc_pwrseq_sd8787_probe(struct platform_device *pdev)
{
 struct mmc_pwrseq_sd8787 *pwrseq;
 struct device *dev = &pdev->dev;

 pwrseq = devm_kzalloc(dev, sizeof(*pwrseq), GFP_KERNEL);
 if (!pwrseq)
  return -ENOMEM;

 pwrseq->pwrdn_gpio = devm_gpiod_get(dev, "powerdown", GPIOD_OUT_LOW);
 if (IS_ERR(pwrseq->pwrdn_gpio))
  return PTR_ERR(pwrseq->pwrdn_gpio);

 pwrseq->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
 if (IS_ERR(pwrseq->reset_gpio))
  return PTR_ERR(pwrseq->reset_gpio);

 pwrseq->pwrseq.dev = dev;
 pwrseq->pwrseq.ops = &mmc_pwrseq_sd8787_ops;
 pwrseq->pwrseq.owner = THIS_MODULE;
 platform_set_drvdata(pdev, pwrseq);

 return mmc_pwrseq_register(&pwrseq->pwrseq);
}
