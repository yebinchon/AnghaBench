
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_app {struct nfp_abm* priv; } ;
struct nfp_abm {int thresholds; int actions; int threshold_undef; } ;


 int NFP_REPR_TYPE_PF ;
 int NFP_REPR_TYPE_PHYS_PORT ;
 int bitmap_free (int ) ;
 int kfree (struct nfp_abm*) ;
 int kvfree (int ) ;
 int nfp_abm_eswitch_clean_up (struct nfp_abm*) ;
 int nfp_reprs_clean_and_free_by_type (struct nfp_app*,int ) ;

__attribute__((used)) static void nfp_abm_clean(struct nfp_app *app)
{
 struct nfp_abm *abm = app->priv;

 nfp_abm_eswitch_clean_up(abm);
 nfp_reprs_clean_and_free_by_type(app, NFP_REPR_TYPE_PF);
 nfp_reprs_clean_and_free_by_type(app, NFP_REPR_TYPE_PHYS_PORT);
 bitmap_free(abm->threshold_undef);
 kvfree(abm->actions);
 kvfree(abm->thresholds);
 kfree(abm);
 app->priv = ((void*)0);
}
