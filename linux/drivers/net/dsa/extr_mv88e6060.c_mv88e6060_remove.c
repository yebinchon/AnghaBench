
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdio_device {int dev; } ;
struct dsa_switch {int dummy; } ;


 struct dsa_switch* dev_get_drvdata (int *) ;
 int dsa_unregister_switch (struct dsa_switch*) ;

__attribute__((used)) static void mv88e6060_remove(struct mdio_device *mdiodev)
{
 struct dsa_switch *ds = dev_get_drvdata(&mdiodev->dev);

 dsa_unregister_switch(ds);
}
