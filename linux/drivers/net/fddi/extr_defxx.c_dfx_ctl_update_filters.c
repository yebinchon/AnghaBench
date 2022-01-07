
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* cmd_req_virt; int group_prom; int ind_group_prom; } ;
struct TYPE_8__ {TYPE_1__* item; } ;
struct TYPE_9__ {TYPE_2__ filter_set; int cmd_type; } ;
struct TYPE_7__ {int item_code; int value; } ;
typedef TYPE_4__ DFX_board_t ;


 int DFX_K_FAILURE ;
 scalar_t__ DFX_K_SUCCESS ;
 int PI_CMD_K_FILTERS_SET ;
 int PI_FSTATE_K_PASS ;
 int PI_ITEM_K_BROADCAST ;
 int PI_ITEM_K_EOL ;
 int PI_ITEM_K_GROUP_PROM ;
 int PI_ITEM_K_IND_GROUP_PROM ;
 scalar_t__ dfx_hw_dma_cmd_req (TYPE_4__*) ;

__attribute__((used)) static int dfx_ctl_update_filters(DFX_board_t *bp)
 {
 int i = 0;



 bp->cmd_req_virt->cmd_type = PI_CMD_K_FILTERS_SET;



 bp->cmd_req_virt->filter_set.item[i].item_code = PI_ITEM_K_BROADCAST;
 bp->cmd_req_virt->filter_set.item[i++].value = PI_FSTATE_K_PASS;



 bp->cmd_req_virt->filter_set.item[i].item_code = PI_ITEM_K_IND_GROUP_PROM;
 bp->cmd_req_virt->filter_set.item[i++].value = bp->ind_group_prom;



 bp->cmd_req_virt->filter_set.item[i].item_code = PI_ITEM_K_GROUP_PROM;
 bp->cmd_req_virt->filter_set.item[i++].value = bp->group_prom;



 bp->cmd_req_virt->filter_set.item[i].item_code = PI_ITEM_K_EOL;



 if (dfx_hw_dma_cmd_req(bp) != DFX_K_SUCCESS)
  return DFX_K_FAILURE;
 return DFX_K_SUCCESS;
 }
