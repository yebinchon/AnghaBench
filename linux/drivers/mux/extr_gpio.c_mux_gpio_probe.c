
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mux_gpio {struct mux_chip* gpios; } ;
struct mux_chip {int ndescs; TYPE_1__* mux; int * ops; } ;
typedef int s32 ;
struct TYPE_2__ {int states; int idle_state; } ;


 int EINVAL ;
 int EPROBE_DEFER ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (struct mux_chip*) ;
 int MUX_IDLE_AS_IS ;
 int PTR_ERR (struct mux_chip*) ;
 int WARN_ON (int) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int) ;
 int device_property_read_u32 (struct device*,char*,int *) ;
 struct mux_chip* devm_gpiod_get_array (struct device*,char*,int ) ;
 struct mux_chip* devm_mux_chip_alloc (struct device*,int,int) ;
 int devm_mux_chip_register (struct device*,struct mux_chip*) ;
 int gpiod_count (struct device*,char*) ;
 struct mux_gpio* mux_chip_priv (struct mux_chip*) ;
 int mux_gpio_ops ;

__attribute__((used)) static int mux_gpio_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct mux_chip *mux_chip;
 struct mux_gpio *mux_gpio;
 int pins;
 s32 idle_state;
 int ret;

 pins = gpiod_count(dev, "mux");
 if (pins < 0)
  return pins;

 mux_chip = devm_mux_chip_alloc(dev, 1, sizeof(*mux_gpio));
 if (IS_ERR(mux_chip))
  return PTR_ERR(mux_chip);

 mux_gpio = mux_chip_priv(mux_chip);
 mux_chip->ops = &mux_gpio_ops;

 mux_gpio->gpios = devm_gpiod_get_array(dev, "mux", GPIOD_OUT_LOW);
 if (IS_ERR(mux_gpio->gpios)) {
  ret = PTR_ERR(mux_gpio->gpios);
  if (ret != -EPROBE_DEFER)
   dev_err(dev, "failed to get gpios\n");
  return ret;
 }
 WARN_ON(pins != mux_gpio->gpios->ndescs);
 mux_chip->mux->states = 1 << pins;

 ret = device_property_read_u32(dev, "idle-state", (u32 *)&idle_state);
 if (ret >= 0 && idle_state != MUX_IDLE_AS_IS) {
  if (idle_state < 0 || idle_state >= mux_chip->mux->states) {
   dev_err(dev, "invalid idle-state %u\n", idle_state);
   return -EINVAL;
  }

  mux_chip->mux->idle_state = idle_state;
 }

 ret = devm_mux_chip_register(dev, mux_chip);
 if (ret < 0)
  return ret;

 dev_info(dev, "%u-way mux-controller registered\n",
   mux_chip->mux->states);

 return 0;
}
