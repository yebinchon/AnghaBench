
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* dev; } ;
struct TYPE_5__ {int name; } ;
typedef int PI_UINT32 ;
typedef TYPE_2__ DFX_board_t ;
 int PI_PDQ_K_REG_PORT_STATUS ;
 int PI_PSTATUS_M_HALT_ID ;
 int PI_PSTATUS_V_HALT_ID ;
 int dfx_port_read_long (TYPE_2__*,int ,int*) ;
 int printk (char*,int ,...) ;

__attribute__((used)) static void dfx_int_pr_halt_id(DFX_board_t *bp)
 {
 PI_UINT32 port_status;
 PI_UINT32 halt_id;



 dfx_port_read_long(bp, PI_PDQ_K_REG_PORT_STATUS, &port_status);



 halt_id = (port_status & PI_PSTATUS_M_HALT_ID) >> PI_PSTATUS_V_HALT_ID;
 switch (halt_id)
  {
  case 129:
   printk("%s: Halt ID: Selftest Timeout\n", bp->dev->name);
   break;

  case 131:
   printk("%s: Halt ID: Host Bus Parity Error\n", bp->dev->name);
   break;

  case 134:
   printk("%s: Halt ID: Host-Directed Halt\n", bp->dev->name);
   break;

  case 128:
   printk("%s: Halt ID: Adapter Software Fault\n", bp->dev->name);
   break;

  case 133:
   printk("%s: Halt ID: Adapter Hardware Fault\n", bp->dev->name);
   break;

  case 130:
   printk("%s: Halt ID: FDDI Network PC Trace Path Test\n", bp->dev->name);
   break;

  case 135:
   printk("%s: Halt ID: Adapter DMA Error\n", bp->dev->name);
   break;

  case 132:
   printk("%s: Halt ID: Firmware Image CRC Error\n", bp->dev->name);
   break;

  case 136:
   printk("%s: Halt ID: 68000 Bus Exception\n", bp->dev->name);
   break;

  default:
   printk("%s: Halt ID: Unknown (code = %X)\n", bp->dev->name, halt_id);
   break;
  }
 }
