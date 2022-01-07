
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mux_chip {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct mux_chip* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct mux_chip*) ;
 int devm_mux_chip_release ;
 int devres_add (struct device*,struct mux_chip**) ;
 struct mux_chip** devres_alloc (int ,int,int ) ;
 int devres_free (struct mux_chip**) ;
 struct mux_chip* mux_chip_alloc (struct device*,unsigned int,size_t) ;

struct mux_chip *devm_mux_chip_alloc(struct device *dev,
         unsigned int controllers,
         size_t sizeof_priv)
{
 struct mux_chip **ptr, *mux_chip;

 ptr = devres_alloc(devm_mux_chip_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return ERR_PTR(-ENOMEM);

 mux_chip = mux_chip_alloc(dev, controllers, sizeof_priv);
 if (IS_ERR(mux_chip)) {
  devres_free(ptr);
  return mux_chip;
 }

 *ptr = mux_chip;
 devres_add(dev, ptr);

 return mux_chip;
}
