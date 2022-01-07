
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfp_rtsym {int dummy; } ;
struct nfp_abm {TYPE_1__* app; int pf_id; int num_bands; } ;
typedef int pf_symbol ;
struct TYPE_2__ {int pf; } ;


 int NFP_NET_MAX_RX_RINGS ;
 size_t array3_size (size_t,int ,int ) ;
 struct nfp_rtsym const* nfp_abm_ctrl_find_rtsym (int ,char*,size_t) ;
 scalar_t__ nfp_abm_has_prio (struct nfp_abm*) ;
 int snprintf (char*,int,char const*,int ,char*) ;

__attribute__((used)) static const struct nfp_rtsym *
nfp_abm_ctrl_find_q_rtsym(struct nfp_abm *abm, const char *name_fmt,
     size_t size)
{
 char pf_symbol[64];

 size = array3_size(size, abm->num_bands, NFP_NET_MAX_RX_RINGS);
 snprintf(pf_symbol, sizeof(pf_symbol), name_fmt,
   abm->pf_id, nfp_abm_has_prio(abm) ? "_per_band" : "");

 return nfp_abm_ctrl_find_rtsym(abm->app->pf, pf_symbol, size);
}
