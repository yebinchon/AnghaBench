
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {int owner; struct device* dev; int * ops; } ;
struct TYPE_3__ {int priority; int notifier_call; } ;
struct mmc_pwrseq_emmc {TYPE_2__ pwrseq; TYPE_1__ reset_nb; int reset_gpio; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dev_notice (struct device*,char*) ;
 int devm_gpiod_get (struct device*,char*,int ) ;
 struct mmc_pwrseq_emmc* devm_kzalloc (struct device*,int,int ) ;
 int gpiod_cansleep (int ) ;
 int mmc_pwrseq_emmc_ops ;
 int mmc_pwrseq_emmc_reset_nb ;
 int mmc_pwrseq_register (TYPE_2__*) ;
 int platform_set_drvdata (struct platform_device*,struct mmc_pwrseq_emmc*) ;
 int register_restart_handler (TYPE_1__*) ;

__attribute__((used)) static int mmc_pwrseq_emmc_probe(struct platform_device *pdev)
{
 struct mmc_pwrseq_emmc *pwrseq;
 struct device *dev = &pdev->dev;

 pwrseq = devm_kzalloc(dev, sizeof(*pwrseq), GFP_KERNEL);
 if (!pwrseq)
  return -ENOMEM;

 pwrseq->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
 if (IS_ERR(pwrseq->reset_gpio))
  return PTR_ERR(pwrseq->reset_gpio);

 if (!gpiod_cansleep(pwrseq->reset_gpio)) {





  pwrseq->reset_nb.notifier_call = mmc_pwrseq_emmc_reset_nb;
  pwrseq->reset_nb.priority = 255;
  register_restart_handler(&pwrseq->reset_nb);
 } else {
  dev_notice(dev, "EMMC reset pin tied to a sleepy GPIO driver; reset on emergency-reboot disabled\n");
 }

 pwrseq->pwrseq.ops = &mmc_pwrseq_emmc_ops;
 pwrseq->pwrseq.dev = dev;
 pwrseq->pwrseq.owner = THIS_MODULE;
 platform_set_drvdata(pdev, pwrseq);

 return mmc_pwrseq_register(&pwrseq->pwrseq);
}
