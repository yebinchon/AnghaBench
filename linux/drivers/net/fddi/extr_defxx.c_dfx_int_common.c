
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_9__ {int lword; } ;
struct TYPE_10__ {TYPE_1__ rcv_xmt_reg; } ;
typedef int PI_UINT32 ;
typedef TYPE_2__ DFX_board_t ;


 int PI_PDQ_K_REG_PORT_STATUS ;
 int PI_PDQ_K_REG_TYPE_2_PROD ;
 int PI_PSTATUS_M_TYPE_0_PENDING ;
 int dfx_int_type_0_process (TYPE_2__*) ;
 int dfx_port_read_long (TYPE_2__*,int ,int*) ;
 int dfx_port_write_long (TYPE_2__*,int ,int ) ;
 int dfx_rcv_queue_process (TYPE_2__*) ;
 scalar_t__ dfx_xmt_done (TYPE_2__*) ;
 TYPE_2__* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void dfx_int_common(struct net_device *dev)
{
 DFX_board_t *bp = netdev_priv(dev);
 PI_UINT32 port_status;



 if(dfx_xmt_done(bp))
  netif_wake_queue(dev);



 dfx_rcv_queue_process(bp);
 dfx_port_write_long(bp, PI_PDQ_K_REG_TYPE_2_PROD, bp->rcv_xmt_reg.lword);



 dfx_port_read_long(bp, PI_PDQ_K_REG_PORT_STATUS, &port_status);



 if (port_status & PI_PSTATUS_M_TYPE_0_PENDING)
  dfx_int_type_0_process(bp);
 }
