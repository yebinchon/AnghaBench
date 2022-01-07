
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mux_control {int idle_state; int cached_state; int lock; struct mux_chip* chip; } ;
struct TYPE_4__ {int of_node; struct device* parent; int * type; int * class; } ;
struct mux_chip {scalar_t__ id; unsigned int controllers; TYPE_1__ dev; struct mux_control* mux; } ;
struct device {int of_node; } ;


 int EINVAL ;
 int ENOMEM ;
 struct mux_chip* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int MUX_CACHE_UNKNOWN ;
 int MUX_IDLE_AS_IS ;
 scalar_t__ WARN_ON (int) ;
 int dev_set_drvdata (TYPE_1__*,struct mux_chip*) ;
 int dev_set_name (TYPE_1__*,char*,int) ;
 int device_initialize (TYPE_1__*) ;
 scalar_t__ ida_simple_get (int *,int ,int ,int ) ;
 int kfree (struct mux_chip*) ;
 struct mux_chip* kzalloc (int,int ) ;
 int mux_class ;
 int mux_ida ;
 int mux_type ;
 int pr_err (char*) ;
 int sema_init (int *,int) ;

struct mux_chip *mux_chip_alloc(struct device *dev,
    unsigned int controllers, size_t sizeof_priv)
{
 struct mux_chip *mux_chip;
 int i;

 if (WARN_ON(!dev || !controllers))
  return ERR_PTR(-EINVAL);

 mux_chip = kzalloc(sizeof(*mux_chip) +
      controllers * sizeof(*mux_chip->mux) +
      sizeof_priv, GFP_KERNEL);
 if (!mux_chip)
  return ERR_PTR(-ENOMEM);

 mux_chip->mux = (struct mux_control *)(mux_chip + 1);
 mux_chip->dev.class = &mux_class;
 mux_chip->dev.type = &mux_type;
 mux_chip->dev.parent = dev;
 mux_chip->dev.of_node = dev->of_node;
 dev_set_drvdata(&mux_chip->dev, mux_chip);

 mux_chip->id = ida_simple_get(&mux_ida, 0, 0, GFP_KERNEL);
 if (mux_chip->id < 0) {
  int err = mux_chip->id;

  pr_err("muxchipX failed to get a device id\n");
  kfree(mux_chip);
  return ERR_PTR(err);
 }
 dev_set_name(&mux_chip->dev, "muxchip%d", mux_chip->id);

 mux_chip->controllers = controllers;
 for (i = 0; i < controllers; ++i) {
  struct mux_control *mux = &mux_chip->mux[i];

  mux->chip = mux_chip;
  sema_init(&mux->lock, 1);
  mux->cached_state = MUX_CACHE_UNKNOWN;
  mux->idle_state = MUX_IDLE_AS_IS;
 }

 device_initialize(&mux_chip->dev);

 return mux_chip;
}
