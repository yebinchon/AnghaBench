
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_abm {int action_mask; } ;


 int BIT (int ) ;
 int NFP_ABM_ACT_MARK_DROP ;

__attribute__((used)) static inline bool nfp_abm_has_mark(struct nfp_abm *abm)
{
 return abm->action_mask & BIT(NFP_ABM_ACT_MARK_DROP);
}
