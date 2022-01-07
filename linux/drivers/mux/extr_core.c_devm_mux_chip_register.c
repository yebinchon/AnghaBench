
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mux_chip {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_mux_chip_reg_release ;
 int devres_add (struct device*,struct mux_chip**) ;
 struct mux_chip** devres_alloc (int ,int,int ) ;
 int devres_free (struct mux_chip**) ;
 int mux_chip_register (struct mux_chip*) ;

int devm_mux_chip_register(struct device *dev,
      struct mux_chip *mux_chip)
{
 struct mux_chip **ptr;
 int res;

 ptr = devres_alloc(devm_mux_chip_reg_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return -ENOMEM;

 res = mux_chip_register(mux_chip);
 if (res) {
  devres_free(ptr);
  return res;
 }

 *ptr = mux_chip;
 devres_add(dev, ptr);

 return res;
}
