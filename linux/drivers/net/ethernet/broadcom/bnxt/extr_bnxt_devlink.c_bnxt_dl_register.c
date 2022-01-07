
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct devlink {int dummy; } ;
struct bnxt_dl {int dummy; } ;
struct TYPE_3__ {int port_id; } ;
struct bnxt {int hwrm_spec_code; int dl_port; int dev; TYPE_1__ pf; int switch_id; TYPE_2__* pdev; int eswitch_mode; } ;
struct TYPE_4__ {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int DEVLINK_ESWITCH_MODE_LEGACY ;
 int DEVLINK_PORT_FLAVOUR_PHYSICAL ;
 int ENOMEM ;
 int ENOTSUPP ;
 int PCI_EXT_CAP_ID_SRIOV ;
 int bnxt_dl_fw_reporters_create (struct bnxt*) ;
 int bnxt_dl_ops ;
 int bnxt_dl_params ;
 int bnxt_dl_port_params ;
 int bnxt_link_bp_to_dl (struct bnxt*,struct devlink*) ;
 struct devlink* devlink_alloc (int *,int) ;
 int devlink_free (struct devlink*) ;
 int devlink_params_publish (struct devlink*) ;
 int devlink_params_register (struct devlink*,int ,int ) ;
 int devlink_params_unregister (struct devlink*,int ,int ) ;
 int devlink_port_attrs_set (int *,int ,int ,int,int ,int ,int) ;
 int devlink_port_params_register (int *,int ,int ) ;
 int devlink_port_register (struct devlink*,int *,int ) ;
 int devlink_port_type_eth_set (int *,int ) ;
 int devlink_port_unregister (int *) ;
 int devlink_register (struct devlink*,int *) ;
 int devlink_unregister (struct devlink*) ;
 int netdev_err (int ,char*) ;
 int netdev_warn (int ,char*,...) ;
 scalar_t__ pci_find_ext_capability (TYPE_2__*,int ) ;

int bnxt_dl_register(struct bnxt *bp)
{
 struct devlink *dl;
 int rc;

 if (bp->hwrm_spec_code < 0x10600) {
  netdev_warn(bp->dev, "Firmware does not support NVM params");
  return -ENOTSUPP;
 }

 dl = devlink_alloc(&bnxt_dl_ops, sizeof(struct bnxt_dl));
 if (!dl) {
  netdev_warn(bp->dev, "devlink_alloc failed");
  return -ENOMEM;
 }

 bnxt_link_bp_to_dl(bp, dl);


 if (pci_find_ext_capability(bp->pdev, PCI_EXT_CAP_ID_SRIOV) &&
     bp->hwrm_spec_code > 0x10803)
  bp->eswitch_mode = DEVLINK_ESWITCH_MODE_LEGACY;

 rc = devlink_register(dl, &bp->pdev->dev);
 if (rc) {
  netdev_warn(bp->dev, "devlink_register failed. rc=%d", rc);
  goto err_dl_free;
 }

 rc = devlink_params_register(dl, bnxt_dl_params,
         ARRAY_SIZE(bnxt_dl_params));
 if (rc) {
  netdev_warn(bp->dev, "devlink_params_register failed. rc=%d",
       rc);
  goto err_dl_unreg;
 }

 devlink_port_attrs_set(&bp->dl_port, DEVLINK_PORT_FLAVOUR_PHYSICAL,
          bp->pf.port_id, 0, 0,
          bp->switch_id, sizeof(bp->switch_id));
 rc = devlink_port_register(dl, &bp->dl_port, bp->pf.port_id);
 if (rc) {
  netdev_err(bp->dev, "devlink_port_register failed");
  goto err_dl_param_unreg;
 }
 devlink_port_type_eth_set(&bp->dl_port, bp->dev);

 rc = devlink_port_params_register(&bp->dl_port, bnxt_dl_port_params,
       ARRAY_SIZE(bnxt_dl_port_params));
 if (rc) {
  netdev_err(bp->dev, "devlink_port_params_register failed");
  goto err_dl_port_unreg;
 }

 devlink_params_publish(dl);

 bnxt_dl_fw_reporters_create(bp);

 return 0;

err_dl_port_unreg:
 devlink_port_unregister(&bp->dl_port);
err_dl_param_unreg:
 devlink_params_unregister(dl, bnxt_dl_params,
      ARRAY_SIZE(bnxt_dl_params));
err_dl_unreg:
 devlink_unregister(dl);
err_dl_free:
 bnxt_link_bp_to_dl(bp, ((void*)0));
 devlink_free(dl);
 return rc;
}
