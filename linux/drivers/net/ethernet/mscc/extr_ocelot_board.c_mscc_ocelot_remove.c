
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ocelot {int dummy; } ;


 int ocelot_deinit (struct ocelot*) ;
 int ocelot_netdevice_nb ;
 int ocelot_switchdev_blocking_nb ;
 int ocelot_switchdev_nb ;
 struct ocelot* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdevice_notifier (int *) ;
 int unregister_switchdev_blocking_notifier (int *) ;
 int unregister_switchdev_notifier (int *) ;

__attribute__((used)) static int mscc_ocelot_remove(struct platform_device *pdev)
{
 struct ocelot *ocelot = platform_get_drvdata(pdev);

 ocelot_deinit(ocelot);
 unregister_switchdev_blocking_notifier(&ocelot_switchdev_blocking_nb);
 unregister_switchdev_notifier(&ocelot_switchdev_nb);
 unregister_netdevice_notifier(&ocelot_netdevice_nb);

 return 0;
}
