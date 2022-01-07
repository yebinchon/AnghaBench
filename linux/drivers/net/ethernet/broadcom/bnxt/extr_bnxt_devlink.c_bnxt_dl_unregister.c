
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink {int dummy; } ;
struct bnxt {int dl_port; struct devlink* dl; } ;


 int ARRAY_SIZE (int ) ;
 int bnxt_dl_fw_reporters_destroy (struct bnxt*) ;
 int bnxt_dl_params ;
 int bnxt_dl_port_params ;
 int devlink_free (struct devlink*) ;
 int devlink_params_unregister (struct devlink*,int ,int ) ;
 int devlink_port_params_unregister (int *,int ,int ) ;
 int devlink_port_unregister (int *) ;
 int devlink_unregister (struct devlink*) ;

void bnxt_dl_unregister(struct bnxt *bp)
{
 struct devlink *dl = bp->dl;

 if (!dl)
  return;

 bnxt_dl_fw_reporters_destroy(bp);
 devlink_port_params_unregister(&bp->dl_port, bnxt_dl_port_params,
           ARRAY_SIZE(bnxt_dl_port_params));
 devlink_port_unregister(&bp->dl_port);
 devlink_params_unregister(dl, bnxt_dl_params,
      ARRAY_SIZE(bnxt_dl_params));
 devlink_unregister(dl);
 devlink_free(dl);
}
