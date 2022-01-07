
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdio_device {int dev; } ;
struct dsa_switch {struct dsa_loop_priv* priv; } ;
struct dsa_loop_priv {int netdev; } ;


 struct dsa_switch* dev_get_drvdata (int *) ;
 int dev_put (int ) ;
 int dsa_unregister_switch (struct dsa_switch*) ;

__attribute__((used)) static void dsa_loop_drv_remove(struct mdio_device *mdiodev)
{
 struct dsa_switch *ds = dev_get_drvdata(&mdiodev->dev);
 struct dsa_loop_priv *ps = ds->priv;

 dsa_unregister_switch(ds);
 dev_put(ps->netdev);
}
