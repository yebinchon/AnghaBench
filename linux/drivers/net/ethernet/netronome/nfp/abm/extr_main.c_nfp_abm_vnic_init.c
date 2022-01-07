
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net {struct nfp_abm_link* app_priv; } ;
struct nfp_app {int dummy; } ;
struct nfp_abm_link {int prio_map; int abm; } ;


 int nfp_abm_ctrl_prio_map_update (struct nfp_abm_link*,int ) ;
 scalar_t__ nfp_abm_has_prio (int ) ;

__attribute__((used)) static int nfp_abm_vnic_init(struct nfp_app *app, struct nfp_net *nn)
{
 struct nfp_abm_link *alink = nn->app_priv;

 if (nfp_abm_has_prio(alink->abm))
  return nfp_abm_ctrl_prio_map_update(alink, alink->prio_map);
 return 0;
}
