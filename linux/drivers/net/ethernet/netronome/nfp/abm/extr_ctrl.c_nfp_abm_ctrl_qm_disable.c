
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_abm {TYPE_1__* app; } ;
struct TYPE_2__ {int pf; } ;


 int NFP_MBOX_PCIE_ABM_DISABLE ;
 int nfp_mbox_cmd (int ,int ,int *,int ,int *,int ) ;

int nfp_abm_ctrl_qm_disable(struct nfp_abm *abm)
{
 return nfp_mbox_cmd(abm->app->pf, NFP_MBOX_PCIE_ABM_DISABLE,
       ((void*)0), 0, ((void*)0), 0);
}
