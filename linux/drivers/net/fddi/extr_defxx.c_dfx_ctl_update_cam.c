
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * entry; } ;
struct TYPE_8__ {TYPE_1__ addr_filter_set; int cmd_type; } ;
struct TYPE_7__ {int uc_count; int * mc_table; scalar_t__ mc_count; int * uc_table; TYPE_3__* cmd_req_virt; } ;
typedef int PI_LAN_ADDR ;
typedef TYPE_2__ DFX_board_t ;


 int DFX_K_FAILURE ;
 scalar_t__ DFX_K_SUCCESS ;
 int FDDI_K_ALEN ;
 int PI_CMD_ADDR_FILTER_K_SIZE ;
 int PI_CMD_K_ADDR_FILTER_SET ;
 int PI_CMD_REQ_K_SIZE_MAX ;
 scalar_t__ dfx_hw_dma_cmd_req (TYPE_2__*) ;
 int memcpy (int *,int *,int) ;
 int memset (TYPE_3__*,int ,int ) ;

__attribute__((used)) static int dfx_ctl_update_cam(DFX_board_t *bp)
 {
 int i;
 PI_LAN_ADDR *p_addr;
 memset(bp->cmd_req_virt, 0, PI_CMD_REQ_K_SIZE_MAX);
 bp->cmd_req_virt->cmd_type = PI_CMD_K_ADDR_FILTER_SET;
 p_addr = &bp->cmd_req_virt->addr_filter_set.entry[0];



 for (i=0; i < (int)bp->uc_count; i++)
  {
  if (i < PI_CMD_ADDR_FILTER_K_SIZE)
   {
   memcpy(p_addr, &bp->uc_table[i*FDDI_K_ALEN], FDDI_K_ALEN);
   p_addr++;
   }
  }



 for (i=0; i < (int)bp->mc_count; i++)
  {
  if ((i + bp->uc_count) < PI_CMD_ADDR_FILTER_K_SIZE)
   {
   memcpy(p_addr, &bp->mc_table[i*FDDI_K_ALEN], FDDI_K_ALEN);
   p_addr++;
   }
  }



 if (dfx_hw_dma_cmd_req(bp) != DFX_K_SUCCESS)
  return DFX_K_FAILURE;
 return DFX_K_SUCCESS;
 }
