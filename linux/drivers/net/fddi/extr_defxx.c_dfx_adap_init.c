
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_10__ ;


typedef int u32 ;
struct TYPE_29__ {int name; } ;
struct TYPE_27__ {TYPE_6__* item; } ;
struct TYPE_25__ {TYPE_4__* item; } ;
struct TYPE_28__ {int cmd_type; TYPE_7__ snmp_set; TYPE_5__ char_set; } ;
struct TYPE_26__ {void* item_code; scalar_t__ item_index; int value; } ;
struct TYPE_24__ {int value; void* item_code; scalar_t__ item_index; } ;
struct TYPE_23__ {scalar_t__ lword; } ;
struct TYPE_22__ {scalar_t__ lword; } ;
struct TYPE_21__ {scalar_t__ lword; } ;
struct TYPE_20__ {int descr_block_phys; TYPE_9__* dev; TYPE_8__* cmd_req_virt; int req_ttrt; int full_duplex_enb; int cons_block_phys; int burst_size; int cons_block_virt; TYPE_3__ rcv_xmt_reg; TYPE_2__ cmd_rsp_reg; TYPE_1__ cmd_req_reg; int reset_type; } ;
typedef int PI_CONSUMER_BLOCK ;
typedef TYPE_10__ DFX_board_t ;


 int DBG_printk (char*) ;
 int DFX_K_FAILURE ;
 scalar_t__ DFX_K_SUCCESS ;
 int PI_CMD_K_CHARS_SET ;
 int PI_CMD_K_SNMP_SET ;
 int PI_CMD_K_START ;
 int PI_HOST_INT_K_ACK_ALL_TYPE_0 ;
 int PI_HOST_INT_K_DISABLE_ALL_INTS ;
 int PI_HOST_INT_K_ENABLE_DEF_INTS ;
 void* PI_ITEM_K_EOL ;
 void* PI_ITEM_K_FDX_ENB_DIS ;
 void* PI_ITEM_K_FLUSH_TIME ;
 void* PI_ITEM_K_MAC_T_REQ ;
 int PI_PCTRL_M_CONS_BLOCK ;
 int PI_PCTRL_M_INIT ;
 int PI_PCTRL_M_SUB_CMD ;
 int PI_PDATA_A_INIT_M_BSWAP_INIT ;
 int PI_PDQ_K_REG_HOST_INT_ENB ;
 int PI_PDQ_K_REG_TYPE_0_STATUS ;
 int PI_SUB_CMD_K_BURST_SIZE_SET ;
 scalar_t__ dfx_ctl_update_cam (TYPE_10__*) ;
 scalar_t__ dfx_ctl_update_filters (TYPE_10__*) ;
 scalar_t__ dfx_hw_dma_cmd_req (TYPE_10__*) ;
 scalar_t__ dfx_hw_dma_uninit (TYPE_10__*,int ) ;
 scalar_t__ dfx_hw_port_ctrl_req (TYPE_10__*,int ,int ,int ,int *) ;
 int dfx_port_write_long (TYPE_10__*,int ,int ) ;
 int dfx_rcv_flush (TYPE_10__*) ;
 scalar_t__ dfx_rcv_init (TYPE_10__*,int) ;
 int memset (int ,int ,int) ;
 int printk (char*,int ) ;

__attribute__((used)) static int dfx_adap_init(DFX_board_t *bp, int get_buffers)
 {
 DBG_printk("In dfx_adap_init...\n");



 dfx_port_write_long(bp, PI_PDQ_K_REG_HOST_INT_ENB, PI_HOST_INT_K_DISABLE_ALL_INTS);



 if (dfx_hw_dma_uninit(bp, bp->reset_type) != DFX_K_SUCCESS)
  {
  printk("%s: Could not uninitialize/reset adapter!\n", bp->dev->name);
  return DFX_K_FAILURE;
  }






 dfx_port_write_long(bp, PI_PDQ_K_REG_TYPE_0_STATUS, PI_HOST_INT_K_ACK_ALL_TYPE_0);
 bp->cmd_req_reg.lword = 0;
 bp->cmd_rsp_reg.lword = 0;
 bp->rcv_xmt_reg.lword = 0;



 memset(bp->cons_block_virt, 0, sizeof(PI_CONSUMER_BLOCK));



 if (dfx_hw_port_ctrl_req(bp,
       PI_PCTRL_M_SUB_CMD,
       PI_SUB_CMD_K_BURST_SIZE_SET,
       bp->burst_size,
       ((void*)0)) != DFX_K_SUCCESS)
  {
  printk("%s: Could not set adapter burst size!\n", bp->dev->name);
  return DFX_K_FAILURE;
  }
 if (dfx_hw_port_ctrl_req(bp,
       PI_PCTRL_M_CONS_BLOCK,
       bp->cons_block_phys,
       0,
       ((void*)0)) != DFX_K_SUCCESS)
  {
  printk("%s: Could not set consumer block address!\n", bp->dev->name);
  return DFX_K_FAILURE;
  }
 if (dfx_hw_port_ctrl_req(bp, PI_PCTRL_M_INIT,
     (u32)(bp->descr_block_phys |
           PI_PDATA_A_INIT_M_BSWAP_INIT),
     0, ((void*)0)) != DFX_K_SUCCESS) {
  printk("%s: Could not set descriptor block address!\n",
         bp->dev->name);
  return DFX_K_FAILURE;
 }



 bp->cmd_req_virt->cmd_type = PI_CMD_K_CHARS_SET;
 bp->cmd_req_virt->char_set.item[0].item_code = PI_ITEM_K_FLUSH_TIME;
 bp->cmd_req_virt->char_set.item[0].value = 3;
 bp->cmd_req_virt->char_set.item[0].item_index = 0;
 bp->cmd_req_virt->char_set.item[1].item_code = PI_ITEM_K_EOL;
 if (dfx_hw_dma_cmd_req(bp) != DFX_K_SUCCESS)
  {
  printk("%s: DMA command request failed!\n", bp->dev->name);
  return DFX_K_FAILURE;
  }



 bp->cmd_req_virt->cmd_type = PI_CMD_K_SNMP_SET;
 bp->cmd_req_virt->snmp_set.item[0].item_code = PI_ITEM_K_FDX_ENB_DIS;
 bp->cmd_req_virt->snmp_set.item[0].value = bp->full_duplex_enb;
 bp->cmd_req_virt->snmp_set.item[0].item_index = 0;
 bp->cmd_req_virt->snmp_set.item[1].item_code = PI_ITEM_K_MAC_T_REQ;
 bp->cmd_req_virt->snmp_set.item[1].value = bp->req_ttrt;
 bp->cmd_req_virt->snmp_set.item[1].item_index = 0;
 bp->cmd_req_virt->snmp_set.item[2].item_code = PI_ITEM_K_EOL;
 if (dfx_hw_dma_cmd_req(bp) != DFX_K_SUCCESS)
  {
  printk("%s: DMA command request failed!\n", bp->dev->name);
  return DFX_K_FAILURE;
  }



 if (dfx_ctl_update_cam(bp) != DFX_K_SUCCESS)
  {
  printk("%s: Adapter CAM update failed!\n", bp->dev->name);
  return DFX_K_FAILURE;
  }



 if (dfx_ctl_update_filters(bp) != DFX_K_SUCCESS)
  {
  printk("%s: Adapter filters update failed!\n", bp->dev->name);
  return DFX_K_FAILURE;
  }






 if (get_buffers)
  dfx_rcv_flush(bp);



 if (dfx_rcv_init(bp, get_buffers))
         {
  printk("%s: Receive buffer allocation failed\n", bp->dev->name);
  if (get_buffers)
   dfx_rcv_flush(bp);
  return DFX_K_FAILURE;
  }



 bp->cmd_req_virt->cmd_type = PI_CMD_K_START;
 if (dfx_hw_dma_cmd_req(bp) != DFX_K_SUCCESS)
  {
  printk("%s: Start command failed\n", bp->dev->name);
  if (get_buffers)
   dfx_rcv_flush(bp);
  return DFX_K_FAILURE;
  }



 dfx_port_write_long(bp, PI_PDQ_K_REG_HOST_INT_ENB, PI_HOST_INT_K_ENABLE_DEF_INTS);
 return DFX_K_SUCCESS;
 }
