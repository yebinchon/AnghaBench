
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_device {void* priv; struct dsa_switch* ds; struct device* dev; } ;
struct dsa_switch {struct ksz_device* priv; } ;
struct device {int dummy; } ;


 int DSA_MAX_PORTS ;
 int GFP_KERNEL ;
 struct ksz_device* devm_kzalloc (struct device*,int,int ) ;
 struct dsa_switch* dsa_switch_alloc (struct device*,int ) ;

struct ksz_device *ksz_switch_alloc(struct device *base, void *priv)
{
 struct dsa_switch *ds;
 struct ksz_device *swdev;

 ds = dsa_switch_alloc(base, DSA_MAX_PORTS);
 if (!ds)
  return ((void*)0);

 swdev = devm_kzalloc(base, sizeof(*swdev), GFP_KERNEL);
 if (!swdev)
  return ((void*)0);

 ds->priv = swdev;
 swdev->dev = base;

 swdev->ds = ds;
 swdev->priv = priv;

 return swdev;
}
