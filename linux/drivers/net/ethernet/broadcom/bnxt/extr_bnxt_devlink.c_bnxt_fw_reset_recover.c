
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_health_reporter {int dummy; } ;
struct bnxt {int dummy; } ;


 int EOPNOTSUPP ;
 int bnxt_fw_reset (struct bnxt*) ;
 struct bnxt* devlink_health_reporter_priv (struct devlink_health_reporter*) ;

__attribute__((used)) static int bnxt_fw_reset_recover(struct devlink_health_reporter *reporter,
     void *priv_ctx)
{
 struct bnxt *bp = devlink_health_reporter_priv(reporter);

 if (!priv_ctx)
  return -EOPNOTSUPP;

 bnxt_fw_reset(bp);
 return 0;
}
