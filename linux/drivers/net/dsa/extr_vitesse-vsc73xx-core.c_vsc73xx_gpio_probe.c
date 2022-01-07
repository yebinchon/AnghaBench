
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ngpio; int base; int can_sleep; int get_direction; int direction_output; int direction_input; int set; int get; int of_node; TYPE_1__* parent; int owner; int label; } ;
struct vsc73xx {TYPE_1__* dev; TYPE_3__ gc; int chipid; } ;
struct TYPE_5__ {int of_node; } ;


 int GFP_KERNEL ;
 int THIS_MODULE ;
 int dev_err (TYPE_1__*,char*) ;
 int devm_gpiochip_add_data (TYPE_1__*,TYPE_3__*,struct vsc73xx*) ;
 int devm_kasprintf (TYPE_1__*,int ,char*,int ) ;
 int vsc73xx_gpio_direction_input ;
 int vsc73xx_gpio_direction_output ;
 int vsc73xx_gpio_get ;
 int vsc73xx_gpio_get_direction ;
 int vsc73xx_gpio_set ;

__attribute__((used)) static int vsc73xx_gpio_probe(struct vsc73xx *vsc)
{
 int ret;

 vsc->gc.label = devm_kasprintf(vsc->dev, GFP_KERNEL, "VSC%04x",
           vsc->chipid);
 vsc->gc.ngpio = 4;
 vsc->gc.owner = THIS_MODULE;
 vsc->gc.parent = vsc->dev;
 vsc->gc.of_node = vsc->dev->of_node;
 vsc->gc.base = -1;
 vsc->gc.get = vsc73xx_gpio_get;
 vsc->gc.set = vsc73xx_gpio_set;
 vsc->gc.direction_input = vsc73xx_gpio_direction_input;
 vsc->gc.direction_output = vsc73xx_gpio_direction_output;
 vsc->gc.get_direction = vsc73xx_gpio_get_direction;
 vsc->gc.can_sleep = 1;
 ret = devm_gpiochip_add_data(vsc->dev, &vsc->gc, vsc);
 if (ret) {
  dev_err(vsc->dev, "unable to register GPIO chip\n");
  return ret;
 }
 return 0;
}
