
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdio_device {int dev; } ;
struct dsa_switch {int dummy; } ;
struct b53_device {struct dsa_switch* ds; } ;


 struct b53_device* dev_get_drvdata (int *) ;
 int dsa_unregister_switch (struct dsa_switch*) ;

__attribute__((used)) static void b53_mdio_remove(struct mdio_device *mdiodev)
{
 struct b53_device *dev = dev_get_drvdata(&mdiodev->dev);
 struct dsa_switch *ds = dev->ds;

 dsa_unregister_switch(ds);
}
