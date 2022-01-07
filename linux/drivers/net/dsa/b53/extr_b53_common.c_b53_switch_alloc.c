
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int * ops; struct b53_device* priv; } ;
struct device {int dummy; } ;
struct b53_io_ops {int dummy; } ;
struct b53_device {int stats_mutex; int reg_mutex; struct b53_io_ops const* ops; void* priv; struct dsa_switch* ds; struct device* dev; } ;


 int DSA_MAX_PORTS ;
 int GFP_KERNEL ;
 int b53_switch_ops ;
 struct b53_device* devm_kzalloc (struct device*,int,int ) ;
 struct dsa_switch* dsa_switch_alloc (struct device*,int ) ;
 int mutex_init (int *) ;

struct b53_device *b53_switch_alloc(struct device *base,
        const struct b53_io_ops *ops,
        void *priv)
{
 struct dsa_switch *ds;
 struct b53_device *dev;

 ds = dsa_switch_alloc(base, DSA_MAX_PORTS);
 if (!ds)
  return ((void*)0);

 dev = devm_kzalloc(base, sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return ((void*)0);

 ds->priv = dev;
 dev->dev = base;

 dev->ds = ds;
 dev->priv = priv;
 dev->ops = ops;
 ds->ops = &b53_switch_ops;
 mutex_init(&dev->reg_mutex);
 mutex_init(&dev->stats_mutex);

 return dev;
}
