
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_5__ {TYPE_1__* mdl; } ;
struct TYPE_6__ {TYPE_2__ mem_info; } ;
struct bna_res_info {TYPE_3__ res_u; } ;
struct bna_ioceth {int * stop_cbarg; int * stop_cbfn; int ioc; struct bna* bna; } ;
struct bna {int msgq; int flash; int cee; int pcidev; } ;
struct TYPE_4__ {int * kva; int dma; } ;


 int BFI_MC_ENET ;
 int BFI_PCIFN_CLASS_ETH ;
 int BNA_GET_DMA_ADDR (int *,int ) ;
 size_t BNA_RES_MEM_T_ATTR ;
 size_t BNA_RES_MEM_T_COM ;
 size_t BNA_RES_MEM_T_FWTRC ;
 int bfa_fsm_set_state (struct bna_ioceth*,int ) ;
 int bfa_msgq_attach (int *,int *) ;
 int bfa_msgq_memclaim (int *,int *,int ) ;
 scalar_t__ bfa_msgq_meminfo () ;
 int bfa_msgq_regisr (int *,int ,int ,struct bna*) ;
 int bfa_nw_cee_attach (int *,int *,struct bna*) ;
 int bfa_nw_cee_mem_claim (int *,int *,int ) ;
 scalar_t__ bfa_nw_cee_meminfo () ;
 int bfa_nw_flash_attach (int *,int *,struct bna*) ;
 int bfa_nw_flash_memclaim (int *,int *,int ) ;
 scalar_t__ bfa_nw_flash_meminfo () ;
 int bfa_nw_ioc_attach (int *,struct bna_ioceth*,int *) ;
 int bfa_nw_ioc_debug_memclaim (int *,int *) ;
 int bfa_nw_ioc_mem_claim (int *,int *,int ) ;
 int bfa_nw_ioc_pci_init (int *,int *,int ) ;
 int bna_attr_init (struct bna_ioceth*) ;
 int bna_ioceth_cbfn ;
 int bna_ioceth_sm_stopped ;
 int bna_msgq_rsp_handler ;

__attribute__((used)) static void
bna_ioceth_init(struct bna_ioceth *ioceth, struct bna *bna,
  struct bna_res_info *res_info)
{
 u64 dma;
 u8 *kva;

 ioceth->bna = bna;






 bfa_nw_ioc_attach(&ioceth->ioc, ioceth, &bna_ioceth_cbfn);
 bfa_nw_ioc_pci_init(&ioceth->ioc, &bna->pcidev, BFI_PCIFN_CLASS_ETH);

 BNA_GET_DMA_ADDR(
  &res_info[BNA_RES_MEM_T_ATTR].res_u.mem_info.mdl[0].dma, dma);
 kva = res_info[BNA_RES_MEM_T_ATTR].res_u.mem_info.mdl[0].kva;
 bfa_nw_ioc_mem_claim(&ioceth->ioc, kva, dma);

 kva = res_info[BNA_RES_MEM_T_FWTRC].res_u.mem_info.mdl[0].kva;
 bfa_nw_ioc_debug_memclaim(&ioceth->ioc, kva);





 BNA_GET_DMA_ADDR(
  &res_info[BNA_RES_MEM_T_COM].res_u.mem_info.mdl[0].dma, dma);
 kva = res_info[BNA_RES_MEM_T_COM].res_u.mem_info.mdl[0].kva;
 bfa_nw_cee_attach(&bna->cee, &ioceth->ioc, bna);
 bfa_nw_cee_mem_claim(&bna->cee, kva, dma);
 kva += bfa_nw_cee_meminfo();
 dma += bfa_nw_cee_meminfo();

 bfa_nw_flash_attach(&bna->flash, &ioceth->ioc, bna);
 bfa_nw_flash_memclaim(&bna->flash, kva, dma);
 kva += bfa_nw_flash_meminfo();
 dma += bfa_nw_flash_meminfo();

 bfa_msgq_attach(&bna->msgq, &ioceth->ioc);
 bfa_msgq_memclaim(&bna->msgq, kva, dma);
 bfa_msgq_regisr(&bna->msgq, BFI_MC_ENET, bna_msgq_rsp_handler, bna);
 kva += bfa_msgq_meminfo();
 dma += bfa_msgq_meminfo();

 ioceth->stop_cbfn = ((void*)0);
 ioceth->stop_cbarg = ((void*)0);

 bna_attr_init(ioceth);

 bfa_fsm_set_state(ioceth, bna_ioceth_sm_stopped);
}
