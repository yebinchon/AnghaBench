
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_abm_link {int dummy; } ;
struct nfp_abm {int app; } ;


 int NFP_REPR_TYPE_PF ;
 int NFP_REPR_TYPE_PHYS_PORT ;
 int nfp_abm_kill_repr (int ,struct nfp_abm_link*,int ) ;

__attribute__((used)) static void
nfp_abm_kill_reprs(struct nfp_abm *abm, struct nfp_abm_link *alink)
{
 nfp_abm_kill_repr(abm->app, alink, NFP_REPR_TYPE_PF);
 nfp_abm_kill_repr(abm->app, alink, NFP_REPR_TYPE_PHYS_PORT);
}
