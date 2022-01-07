
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_fw_health {int * fw_fatal_reporter; int * fw_reset_reporter; int * fw_reporter; } ;
struct bnxt {int dev; int dl; struct bnxt_fw_health* fw_health; } ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int bnxt_dl_fw_fatal_reporter_ops ;
 int bnxt_dl_fw_reporter_ops ;
 int bnxt_dl_fw_reset_reporter_ops ;
 void* devlink_health_reporter_create (int ,int *,int ,int,struct bnxt*) ;
 int netdev_warn (int ,char*,int ) ;

__attribute__((used)) static void bnxt_dl_fw_reporters_create(struct bnxt *bp)
{
 struct bnxt_fw_health *health = bp->fw_health;

 if (!health)
  return;

 health->fw_reporter =
  devlink_health_reporter_create(bp->dl, &bnxt_dl_fw_reporter_ops,
            0, 0, bp);
 if (IS_ERR(health->fw_reporter)) {
  netdev_warn(bp->dev, "Failed to create FW health reporter, rc = %ld\n",
       PTR_ERR(health->fw_reporter));
  health->fw_reporter = ((void*)0);
 }

 health->fw_reset_reporter =
  devlink_health_reporter_create(bp->dl,
            &bnxt_dl_fw_reset_reporter_ops,
            0, 1, bp);
 if (IS_ERR(health->fw_reset_reporter)) {
  netdev_warn(bp->dev, "Failed to create FW fatal health reporter, rc = %ld\n",
       PTR_ERR(health->fw_reset_reporter));
  health->fw_reset_reporter = ((void*)0);
 }

 health->fw_fatal_reporter =
  devlink_health_reporter_create(bp->dl,
            &bnxt_dl_fw_fatal_reporter_ops,
            0, 1, bp);
 if (IS_ERR(health->fw_fatal_reporter)) {
  netdev_warn(bp->dev, "Failed to create FW fatal health reporter, rc = %ld\n",
       PTR_ERR(health->fw_fatal_reporter));
  health->fw_fatal_reporter = ((void*)0);
 }
}
