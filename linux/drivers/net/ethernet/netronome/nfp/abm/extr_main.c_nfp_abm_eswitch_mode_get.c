
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_app {struct nfp_abm* priv; } ;
struct nfp_abm {int eswitch_mode; } ;
typedef enum devlink_eswitch_mode { ____Placeholder_devlink_eswitch_mode } devlink_eswitch_mode ;



__attribute__((used)) static enum devlink_eswitch_mode nfp_abm_eswitch_mode_get(struct nfp_app *app)
{
 struct nfp_abm *abm = app->priv;

 return abm->eswitch_mode;
}
