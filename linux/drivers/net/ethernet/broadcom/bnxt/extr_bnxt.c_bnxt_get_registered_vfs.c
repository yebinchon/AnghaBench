
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int registered_vfs; } ;
struct bnxt {scalar_t__ sriov_cfg; TYPE_1__ pf; int dev; } ;


 int BNXT_PF (struct bnxt*) ;
 int bnxt_hwrm_func_qcfg (struct bnxt*) ;
 int netdev_err (int ,char*,int) ;

__attribute__((used)) static int bnxt_get_registered_vfs(struct bnxt *bp)
{
 return 0;
}
