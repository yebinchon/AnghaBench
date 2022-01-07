
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ksz_device {TYPE_1__* dev_ops; } ;
struct dsa_switch {struct ksz_device* priv; } ;
struct TYPE_2__ {int (* flush_dyn_mac_table ) (struct ksz_device*,int) ;} ;


 int stub1 (struct ksz_device*,int) ;

void ksz_port_fast_age(struct dsa_switch *ds, int port)
{
 struct ksz_device *dev = ds->priv;

 dev->dev_ops->flush_dyn_mac_table(dev, port);
}
