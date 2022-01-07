
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mux_control {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct mux_control* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct mux_control*) ;
 int devm_mux_control_release ;
 int devres_add (struct device*,struct mux_control**) ;
 struct mux_control** devres_alloc (int ,int,int ) ;
 int devres_free (struct mux_control**) ;
 struct mux_control* mux_control_get (struct device*,char const*) ;

struct mux_control *devm_mux_control_get(struct device *dev,
      const char *mux_name)
{
 struct mux_control **ptr, *mux;

 ptr = devres_alloc(devm_mux_control_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return ERR_PTR(-ENOMEM);

 mux = mux_control_get(dev, mux_name);
 if (IS_ERR(mux)) {
  devres_free(ptr);
  return mux;
 }

 *ptr = mux;
 devres_add(dev, ptr);

 return mux;
}
