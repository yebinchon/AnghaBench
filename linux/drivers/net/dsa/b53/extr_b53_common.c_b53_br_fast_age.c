
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int dev; struct b53_device* priv; } ;
struct b53_device {int dummy; } ;


 scalar_t__ b53_fast_age_port (struct b53_device*,int) ;
 int dev_err (int ,char*) ;

void b53_br_fast_age(struct dsa_switch *ds, int port)
{
 struct b53_device *dev = ds->priv;

 if (b53_fast_age_port(dev, port))
  dev_err(ds->dev, "fast ageing failed\n");
}
