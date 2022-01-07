
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num; void* len; void* mem_type; } ;
struct TYPE_4__ {TYPE_1__ mem_info; } ;
struct bna_res_info {TYPE_2__ res_u; void* res_type; } ;
struct bfi_enet_stats {int dummy; } ;


 void* ALIGN (int,int ) ;
 void* BNA_DBG_FWTRC_LEN ;
 void* BNA_MEM_T_DMA ;
 void* BNA_MEM_T_KVA ;
 size_t BNA_RES_MEM_T_ATTR ;
 size_t BNA_RES_MEM_T_COM ;
 size_t BNA_RES_MEM_T_FWTRC ;
 size_t BNA_RES_MEM_T_STATS ;
 void* BNA_RES_T_MEM ;
 int PAGE_SIZE ;
 int bfa_msgq_meminfo () ;
 int bfa_nw_cee_meminfo () ;
 int bfa_nw_flash_meminfo () ;
 int bfa_nw_ioc_meminfo () ;

void
bna_res_req(struct bna_res_info *res_info)
{

 res_info[BNA_RES_MEM_T_COM].res_type = BNA_RES_T_MEM;
 res_info[BNA_RES_MEM_T_COM].res_u.mem_info.mem_type = BNA_MEM_T_DMA;
 res_info[BNA_RES_MEM_T_COM].res_u.mem_info.num = 1;
 res_info[BNA_RES_MEM_T_COM].res_u.mem_info.len = ALIGN(
    (bfa_nw_cee_meminfo() +
     bfa_nw_flash_meminfo() +
     bfa_msgq_meminfo()), PAGE_SIZE);


 res_info[BNA_RES_MEM_T_ATTR].res_type = BNA_RES_T_MEM;
 res_info[BNA_RES_MEM_T_ATTR].res_u.mem_info.mem_type = BNA_MEM_T_DMA;
 res_info[BNA_RES_MEM_T_ATTR].res_u.mem_info.num = 1;
 res_info[BNA_RES_MEM_T_ATTR].res_u.mem_info.len =
    ALIGN(bfa_nw_ioc_meminfo(), PAGE_SIZE);


 res_info[BNA_RES_MEM_T_FWTRC].res_type = BNA_RES_T_MEM;
 res_info[BNA_RES_MEM_T_FWTRC].res_u.mem_info.mem_type = BNA_MEM_T_KVA;
 res_info[BNA_RES_MEM_T_FWTRC].res_u.mem_info.num = 1;
 res_info[BNA_RES_MEM_T_FWTRC].res_u.mem_info.len = BNA_DBG_FWTRC_LEN;


 res_info[BNA_RES_MEM_T_STATS].res_type = BNA_RES_T_MEM;
 res_info[BNA_RES_MEM_T_STATS].res_u.mem_info.mem_type = BNA_MEM_T_DMA;
 res_info[BNA_RES_MEM_T_STATS].res_u.mem_info.num = 1;
 res_info[BNA_RES_MEM_T_STATS].res_u.mem_info.len =
    ALIGN(sizeof(struct bfi_enet_stats),
     PAGE_SIZE);
}
