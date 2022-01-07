
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ionic {int dummy; } ;
struct devlink {int dummy; } ;
struct device {int dummy; } ;


 struct devlink* devlink_alloc (int *,int) ;
 struct ionic* devlink_priv (struct devlink*) ;
 int ionic_dl_ops ;

struct ionic *ionic_devlink_alloc(struct device *dev)
{
 struct devlink *dl;

 dl = devlink_alloc(&ionic_dl_ops, sizeof(struct ionic));

 return devlink_priv(dl);
}
