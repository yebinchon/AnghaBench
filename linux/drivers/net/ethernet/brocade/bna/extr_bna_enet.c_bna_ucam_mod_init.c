
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bna_ucam_mod {struct bna* bna; int del_q; struct bna_mac* ucmac; int free_q; } ;
struct TYPE_7__ {TYPE_1__* mdl; } ;
struct TYPE_8__ {TYPE_2__ mem_info; } ;
struct bna_res_info {TYPE_3__ res_u; } ;
struct bna_mac {int qe; } ;
struct TYPE_9__ {int num_ucmac; } ;
struct TYPE_10__ {TYPE_4__ attr; } ;
struct bna {TYPE_5__ ioceth; } ;
struct TYPE_6__ {scalar_t__ kva; } ;


 size_t BNA_MOD_RES_MEM_T_UCMAC_ARRAY ;
 int INIT_LIST_HEAD (int *) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void
bna_ucam_mod_init(struct bna_ucam_mod *ucam_mod, struct bna *bna,
    struct bna_res_info *res_info)
{
 int i;

 ucam_mod->ucmac = (struct bna_mac *)
 res_info[BNA_MOD_RES_MEM_T_UCMAC_ARRAY].res_u.mem_info.mdl[0].kva;

 INIT_LIST_HEAD(&ucam_mod->free_q);
 for (i = 0; i < bna->ioceth.attr.num_ucmac; i++)
  list_add_tail(&ucam_mod->ucmac[i].qe, &ucam_mod->free_q);


 INIT_LIST_HEAD(&ucam_mod->del_q);
 for (; i < (bna->ioceth.attr.num_ucmac * 2); i++)
  list_add_tail(&ucam_mod->ucmac[i].qe, &ucam_mod->del_q);

 ucam_mod->bna = bna;
}
