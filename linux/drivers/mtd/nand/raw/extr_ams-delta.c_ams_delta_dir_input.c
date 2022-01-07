
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_descs {int ndescs; int * desc; } ;
struct ams_delta_nand {int data_in; struct gpio_descs* data_gpiods; } ;


 int gpiod_direction_input (int ) ;

__attribute__((used)) static void ams_delta_dir_input(struct ams_delta_nand *priv)
{
 struct gpio_descs *data_gpiods = priv->data_gpiods;
 int i;

 for (i = 0; i < data_gpiods->ndescs; i++)
  gpiod_direction_input(data_gpiods->desc[i]);

 priv->data_in = 1;
}
