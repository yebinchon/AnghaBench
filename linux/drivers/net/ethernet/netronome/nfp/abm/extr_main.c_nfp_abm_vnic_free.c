
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net {struct nfp_abm_link* app_priv; } ;
struct nfp_app {int dummy; } ;
struct nfp_abm_link {struct nfp_abm_link* prio_map; int qdiscs; int abm; } ;


 int WARN (int,char*) ;
 int kfree (struct nfp_abm_link*) ;
 int nfp_abm_kill_reprs (int ,struct nfp_abm_link*) ;
 int radix_tree_empty (int *) ;

__attribute__((used)) static void nfp_abm_vnic_free(struct nfp_app *app, struct nfp_net *nn)
{
 struct nfp_abm_link *alink = nn->app_priv;

 nfp_abm_kill_reprs(alink->abm, alink);
 WARN(!radix_tree_empty(&alink->qdiscs), "left over qdiscs\n");
 kfree(alink->prio_map);
 kfree(alink);
}
