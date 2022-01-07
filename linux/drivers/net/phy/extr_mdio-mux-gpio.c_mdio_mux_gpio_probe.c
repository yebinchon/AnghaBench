
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct mdio_mux_gpio_state* platform_data; int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mdio_mux_gpio_state {struct gpio_descs* gpios; int mux_handle; } ;
struct gpio_descs {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (struct gpio_descs*) ;
 int PTR_ERR (struct gpio_descs*) ;
 struct mdio_mux_gpio_state* devm_kzalloc (TYPE_1__*,int,int ) ;
 struct gpio_descs* gpiod_get_array (TYPE_1__*,int *,int ) ;
 int gpiod_put_array (struct gpio_descs*) ;
 int mdio_mux_gpio_switch_fn ;
 int mdio_mux_init (TYPE_1__*,int ,int ,int *,struct mdio_mux_gpio_state*,int *) ;

__attribute__((used)) static int mdio_mux_gpio_probe(struct platform_device *pdev)
{
 struct mdio_mux_gpio_state *s;
 struct gpio_descs *gpios;
 int r;

 gpios = gpiod_get_array(&pdev->dev, ((void*)0), GPIOD_OUT_LOW);
 if (IS_ERR(gpios))
  return PTR_ERR(gpios);

 s = devm_kzalloc(&pdev->dev, sizeof(*s), GFP_KERNEL);
 if (!s) {
  gpiod_put_array(gpios);
  return -ENOMEM;
 }

 s->gpios = gpios;

 r = mdio_mux_init(&pdev->dev, pdev->dev.of_node,
     mdio_mux_gpio_switch_fn, &s->mux_handle, s, ((void*)0));

 if (r != 0) {
  gpiod_put_array(s->gpios);
  return r;
 }

 pdev->dev.platform_data = s;
 return 0;
}
