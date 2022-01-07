
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ionic {int dl_port; } ;
struct devlink {int dummy; } ;


 int devlink_port_unregister (int *) ;
 int devlink_unregister (struct devlink*) ;
 struct devlink* priv_to_devlink (struct ionic*) ;

void ionic_devlink_unregister(struct ionic *ionic)
{
 struct devlink *dl = priv_to_devlink(ionic);

 devlink_port_unregister(&ionic->dl_port);
 devlink_unregister(dl);
}
