
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_abm {int eswitch_mode; } ;


 int DEVLINK_ESWITCH_MODE_LEGACY ;
 int nfp_abm_ctrl_qm_disable (struct nfp_abm*) ;
 int nfp_abm_kill_reprs_all (struct nfp_abm*) ;

__attribute__((used)) static int nfp_abm_eswitch_set_legacy(struct nfp_abm *abm)
{
 nfp_abm_kill_reprs_all(abm);
 nfp_abm_ctrl_qm_disable(abm);

 abm->eswitch_mode = DEVLINK_ESWITCH_MODE_LEGACY;
 return 0;
}
