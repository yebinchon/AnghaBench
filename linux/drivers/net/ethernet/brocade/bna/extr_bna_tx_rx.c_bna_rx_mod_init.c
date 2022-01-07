
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bna_rxq {int qe; } ;
struct bna_rxp {int qe; } ;
struct bna_rx_mod {scalar_t__ rxq_free_count; int rxq_free_q; struct bna_rxq* rxq; scalar_t__ rxp_free_count; int rxp_free_q; struct bna_rxp* rxp; scalar_t__ rx_free_count; int rx_free_q; struct bna_rx* rx; int rx_active_q; scalar_t__ flags; struct bna* bna; } ;
struct bna_rx {int rid; int qe; int * stop_cbarg; int * stop_cbfn; int * bna; int rxp_q; } ;
struct TYPE_7__ {TYPE_1__* mdl; } ;
struct TYPE_8__ {TYPE_2__ mem_info; } ;
struct bna_res_info {TYPE_3__ res_u; } ;
struct TYPE_9__ {int num_rxp; } ;
struct TYPE_10__ {TYPE_4__ attr; } ;
struct bna {TYPE_5__ ioceth; } ;
struct TYPE_6__ {scalar_t__ kva; } ;


 size_t BNA_MOD_RES_MEM_T_RXP_ARRAY ;
 size_t BNA_MOD_RES_MEM_T_RXQ_ARRAY ;
 size_t BNA_MOD_RES_MEM_T_RX_ARRAY ;
 int INIT_LIST_HEAD (int *) ;
 int list_add_tail (int *,int *) ;

void bna_rx_mod_init(struct bna_rx_mod *rx_mod, struct bna *bna,
   struct bna_res_info *res_info)
{
 int index;
 struct bna_rx *rx_ptr;
 struct bna_rxp *rxp_ptr;
 struct bna_rxq *rxq_ptr;

 rx_mod->bna = bna;
 rx_mod->flags = 0;

 rx_mod->rx = (struct bna_rx *)
  res_info[BNA_MOD_RES_MEM_T_RX_ARRAY].res_u.mem_info.mdl[0].kva;
 rx_mod->rxp = (struct bna_rxp *)
  res_info[BNA_MOD_RES_MEM_T_RXP_ARRAY].res_u.mem_info.mdl[0].kva;
 rx_mod->rxq = (struct bna_rxq *)
  res_info[BNA_MOD_RES_MEM_T_RXQ_ARRAY].res_u.mem_info.mdl[0].kva;


 INIT_LIST_HEAD(&rx_mod->rx_free_q);
 rx_mod->rx_free_count = 0;
 INIT_LIST_HEAD(&rx_mod->rxq_free_q);
 rx_mod->rxq_free_count = 0;
 INIT_LIST_HEAD(&rx_mod->rxp_free_q);
 rx_mod->rxp_free_count = 0;
 INIT_LIST_HEAD(&rx_mod->rx_active_q);


 for (index = 0; index < bna->ioceth.attr.num_rxp; index++) {
  rx_ptr = &rx_mod->rx[index];

  INIT_LIST_HEAD(&rx_ptr->rxp_q);
  rx_ptr->bna = ((void*)0);
  rx_ptr->rid = index;
  rx_ptr->stop_cbfn = ((void*)0);
  rx_ptr->stop_cbarg = ((void*)0);

  list_add_tail(&rx_ptr->qe, &rx_mod->rx_free_q);
  rx_mod->rx_free_count++;
 }


 for (index = 0; index < bna->ioceth.attr.num_rxp; index++) {
  rxp_ptr = &rx_mod->rxp[index];
  list_add_tail(&rxp_ptr->qe, &rx_mod->rxp_free_q);
  rx_mod->rxp_free_count++;
 }


 for (index = 0; index < (bna->ioceth.attr.num_rxp * 2); index++) {
  rxq_ptr = &rx_mod->rxq[index];
  list_add_tail(&rxq_ptr->qe, &rx_mod->rxq_free_q);
  rx_mod->rxq_free_count++;
 }
}
