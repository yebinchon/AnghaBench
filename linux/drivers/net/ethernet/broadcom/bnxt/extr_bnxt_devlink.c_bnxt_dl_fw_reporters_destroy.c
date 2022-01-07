
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_fw_health {scalar_t__ fw_fatal_reporter; scalar_t__ fw_reset_reporter; scalar_t__ fw_reporter; } ;
struct bnxt {struct bnxt_fw_health* fw_health; } ;


 int devlink_health_reporter_destroy (scalar_t__) ;

__attribute__((used)) static void bnxt_dl_fw_reporters_destroy(struct bnxt *bp)
{
 struct bnxt_fw_health *health = bp->fw_health;

 if (!health)
  return;

 if (health->fw_reporter)
  devlink_health_reporter_destroy(health->fw_reporter);

 if (health->fw_reset_reporter)
  devlink_health_reporter_destroy(health->fw_reset_reporter);

 if (health->fw_fatal_reporter)
  devlink_health_reporter_destroy(health->fw_fatal_reporter);
}
