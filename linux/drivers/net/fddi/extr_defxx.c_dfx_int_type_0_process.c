
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {void* link_available; TYPE_1__* dev; scalar_t__ reset_type; } ;
struct TYPE_11__ {int name; } ;
typedef int PI_UINT32 ;
typedef TYPE_2__ DFX_board_t ;


 scalar_t__ DFX_K_SUCCESS ;
 int PI_HOST_INT_K_DISABLE_ALL_INTS ;
 void* PI_K_FALSE ;
 void* PI_K_TRUE ;
 int PI_PCTRL_M_XMT_DATA_FLUSH_DONE ;
 int PI_PDQ_K_REG_HOST_INT_ENB ;
 int PI_PDQ_K_REG_TYPE_0_STATUS ;
 int PI_STATE_K_HALTED ;
 int PI_STATE_K_LINK_AVAIL ;
 int PI_TYPE_0_STAT_M_BUS_PAR_ERR ;
 int PI_TYPE_0_STAT_M_NXM ;
 int PI_TYPE_0_STAT_M_PM_PAR_ERR ;
 int PI_TYPE_0_STAT_M_STATE_CHANGE ;
 int PI_TYPE_0_STAT_M_XMT_FLUSH ;
 scalar_t__ dfx_adap_init (TYPE_2__*,int ) ;
 int dfx_hw_adap_state_rd (TYPE_2__*) ;
 int dfx_hw_port_ctrl_req (TYPE_2__*,int ,int ,int ,int *) ;
 int dfx_int_pr_halt_id (TYPE_2__*) ;
 int dfx_port_read_long (TYPE_2__*,int ,int*) ;
 int dfx_port_write_long (TYPE_2__*,int ,int) ;
 int dfx_xmt_flush (TYPE_2__*) ;
 int printk (char*,int ) ;

__attribute__((used)) static void dfx_int_type_0_process(DFX_board_t *bp)

 {
 PI_UINT32 type_0_status;
 PI_UINT32 state;







 dfx_port_read_long(bp, PI_PDQ_K_REG_TYPE_0_STATUS, &type_0_status);
 dfx_port_write_long(bp, PI_PDQ_K_REG_TYPE_0_STATUS, type_0_status);



 if (type_0_status & (PI_TYPE_0_STAT_M_NXM |
       PI_TYPE_0_STAT_M_PM_PAR_ERR |
       PI_TYPE_0_STAT_M_BUS_PAR_ERR))
  {


  if (type_0_status & PI_TYPE_0_STAT_M_NXM)
   printk("%s: Non-Existent Memory Access Error\n", bp->dev->name);



  if (type_0_status & PI_TYPE_0_STAT_M_PM_PAR_ERR)
   printk("%s: Packet Memory Parity Error\n", bp->dev->name);



  if (type_0_status & PI_TYPE_0_STAT_M_BUS_PAR_ERR)
   printk("%s: Host Bus Parity Error\n", bp->dev->name);



  bp->link_available = PI_K_FALSE;
  bp->reset_type = 0;
  printk("%s: Resetting adapter...\n", bp->dev->name);
  if (dfx_adap_init(bp, 0) != DFX_K_SUCCESS)
   {
   printk("%s: Adapter reset failed!  Disabling adapter interrupts.\n", bp->dev->name);
   dfx_port_write_long(bp, PI_PDQ_K_REG_HOST_INT_ENB, PI_HOST_INT_K_DISABLE_ALL_INTS);
   return;
   }
  printk("%s: Adapter reset successful!\n", bp->dev->name);
  return;
  }



 if (type_0_status & PI_TYPE_0_STAT_M_XMT_FLUSH)
  {


  bp->link_available = PI_K_FALSE;
  dfx_xmt_flush(bp);
  (void) dfx_hw_port_ctrl_req(bp,
         PI_PCTRL_M_XMT_DATA_FLUSH_DONE,
         0,
         0,
         ((void*)0));
  }



 if (type_0_status & PI_TYPE_0_STAT_M_STATE_CHANGE)
  {


  state = dfx_hw_adap_state_rd(bp);
  if (state == PI_STATE_K_HALTED)
   {






   printk("%s: Controller has transitioned to HALTED state!\n", bp->dev->name);
   dfx_int_pr_halt_id(bp);



   bp->link_available = PI_K_FALSE;
   bp->reset_type = 0;
   printk("%s: Resetting adapter...\n", bp->dev->name);
   if (dfx_adap_init(bp, 0) != DFX_K_SUCCESS)
    {
    printk("%s: Adapter reset failed!  Disabling adapter interrupts.\n", bp->dev->name);
    dfx_port_write_long(bp, PI_PDQ_K_REG_HOST_INT_ENB, PI_HOST_INT_K_DISABLE_ALL_INTS);
    return;
    }
   printk("%s: Adapter reset successful!\n", bp->dev->name);
   }
  else if (state == PI_STATE_K_LINK_AVAIL)
   {
   bp->link_available = PI_K_TRUE;
   }
  }
 }
