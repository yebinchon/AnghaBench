
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ionic {TYPE_1__* master_lif; int dl_port; int dev; } ;
struct devlink {int dummy; } ;
struct TYPE_2__ {int netdev; } ;


 int DEVLINK_PORT_FLAVOUR_PHYSICAL ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*,int) ;
 int devlink_port_attrs_set (int *,int ,int ,int,int ,int *,int ) ;
 int devlink_port_register (struct devlink*,int *,int ) ;
 int devlink_port_type_eth_set (int *,int ) ;
 int devlink_register (struct devlink*,int ) ;
 struct devlink* priv_to_devlink (struct ionic*) ;

int ionic_devlink_register(struct ionic *ionic)
{
 struct devlink *dl = priv_to_devlink(ionic);
 int err;

 err = devlink_register(dl, ionic->dev);
 if (err) {
  dev_warn(ionic->dev, "devlink_register failed: %d\n", err);
  return err;
 }

 devlink_port_attrs_set(&ionic->dl_port, DEVLINK_PORT_FLAVOUR_PHYSICAL,
          0, 0, 0, ((void*)0), 0);
 err = devlink_port_register(dl, &ionic->dl_port, 0);
 if (err)
  dev_err(ionic->dev, "devlink_port_register failed: %d\n", err);
 else
  devlink_port_type_eth_set(&ionic->dl_port,
       ionic->master_lif->netdev);

 return err;
}
