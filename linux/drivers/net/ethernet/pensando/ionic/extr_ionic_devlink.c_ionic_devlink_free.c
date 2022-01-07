
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ionic {int dummy; } ;
struct devlink {int dummy; } ;


 int devlink_free (struct devlink*) ;
 struct devlink* priv_to_devlink (struct ionic*) ;

void ionic_devlink_free(struct ionic *ionic)
{
 struct devlink *dl = priv_to_devlink(ionic);

 devlink_free(dl);
}
