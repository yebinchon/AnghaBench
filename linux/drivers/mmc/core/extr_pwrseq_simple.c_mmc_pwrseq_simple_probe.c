
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int owner; int * ops; struct device* dev; } ;
struct mmc_pwrseq_simple {TYPE_1__ pwrseq; int power_off_delay_us; int post_power_on_delay_ms; int reset_gpios; int ext_clk; } ;


 int ENOENT ;
 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 int GPIOD_OUT_HIGH ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int device_property_read_u32 (struct device*,char*,int *) ;
 int devm_clk_get (struct device*,char*) ;
 int devm_gpiod_get_array (struct device*,char*,int ) ;
 struct mmc_pwrseq_simple* devm_kzalloc (struct device*,int,int ) ;
 int mmc_pwrseq_register (TYPE_1__*) ;
 int mmc_pwrseq_simple_ops ;
 int platform_set_drvdata (struct platform_device*,struct mmc_pwrseq_simple*) ;

__attribute__((used)) static int mmc_pwrseq_simple_probe(struct platform_device *pdev)
{
 struct mmc_pwrseq_simple *pwrseq;
 struct device *dev = &pdev->dev;

 pwrseq = devm_kzalloc(dev, sizeof(*pwrseq), GFP_KERNEL);
 if (!pwrseq)
  return -ENOMEM;

 pwrseq->ext_clk = devm_clk_get(dev, "ext_clock");
 if (IS_ERR(pwrseq->ext_clk) && PTR_ERR(pwrseq->ext_clk) != -ENOENT)
  return PTR_ERR(pwrseq->ext_clk);

 pwrseq->reset_gpios = devm_gpiod_get_array(dev, "reset",
       GPIOD_OUT_HIGH);
 if (IS_ERR(pwrseq->reset_gpios) &&
     PTR_ERR(pwrseq->reset_gpios) != -ENOENT &&
     PTR_ERR(pwrseq->reset_gpios) != -ENOSYS) {
  return PTR_ERR(pwrseq->reset_gpios);
 }

 device_property_read_u32(dev, "post-power-on-delay-ms",
     &pwrseq->post_power_on_delay_ms);
 device_property_read_u32(dev, "power-off-delay-us",
     &pwrseq->power_off_delay_us);

 pwrseq->pwrseq.dev = dev;
 pwrseq->pwrseq.ops = &mmc_pwrseq_simple_ops;
 pwrseq->pwrseq.owner = THIS_MODULE;
 platform_set_drvdata(pdev, pwrseq);

 return mmc_pwrseq_register(&pwrseq->pwrseq);
}
