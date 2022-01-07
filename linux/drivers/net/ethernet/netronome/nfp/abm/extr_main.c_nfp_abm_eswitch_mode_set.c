
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nfp_app {struct nfp_abm* priv; } ;
struct nfp_abm {int eswitch_mode; } ;




 int EINVAL ;
 int nfp_abm_eswitch_set_legacy (struct nfp_abm*) ;
 int nfp_abm_eswitch_set_switchdev (struct nfp_abm*) ;

__attribute__((used)) static int nfp_abm_eswitch_mode_set(struct nfp_app *app, u16 mode)
{
 struct nfp_abm *abm = app->priv;

 if (abm->eswitch_mode == mode)
  return 0;

 switch (mode) {
 case 129:
  return nfp_abm_eswitch_set_legacy(abm);
 case 128:
  return nfp_abm_eswitch_set_switchdev(abm);
 default:
  return -EINVAL;
 }
}
