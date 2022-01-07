
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_abm {scalar_t__ eswitch_mode; } ;


 scalar_t__ DEVLINK_ESWITCH_MODE_LEGACY ;
 int WARN_ON (int ) ;
 int nfp_abm_eswitch_set_legacy (struct nfp_abm*) ;

__attribute__((used)) static void nfp_abm_eswitch_clean_up(struct nfp_abm *abm)
{
 if (abm->eswitch_mode != DEVLINK_ESWITCH_MODE_LEGACY)
  WARN_ON(nfp_abm_eswitch_set_legacy(abm));
}
