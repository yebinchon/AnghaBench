
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct net_device {int irq; } ;
struct TYPE_10__ {scalar_t__ lword; } ;
struct TYPE_12__ {scalar_t__ lword; } ;
struct TYPE_11__ {scalar_t__ lword; } ;
struct TYPE_13__ {int cons_block_virt; TYPE_1__ rcv_xmt_reg; TYPE_3__ cmd_rsp_reg; TYPE_2__ cmd_req_reg; } ;
typedef int PI_CONSUMER_BLOCK ;
typedef TYPE_4__ DFX_board_t ;


 int DBG_printk (char*) ;
 int PI_HOST_INT_K_DISABLE_ALL_INTS ;
 int PI_PDATA_A_RESET_M_SKIP_ST ;
 int PI_PDQ_K_REG_HOST_INT_ENB ;
 int dfx_hw_dma_uninit (TYPE_4__*,int ) ;
 int dfx_port_write_long (TYPE_4__*,int ,int ) ;
 int dfx_rcv_flush (TYPE_4__*) ;
 int dfx_xmt_flush (TYPE_4__*) ;
 int free_irq (int ,struct net_device*) ;
 int memset (int ,int ,int) ;
 TYPE_4__* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int dfx_close(struct net_device *dev)
{
 DFX_board_t *bp = netdev_priv(dev);

 DBG_printk("In dfx_close...\n");



 dfx_port_write_long(bp, PI_PDQ_K_REG_HOST_INT_ENB, PI_HOST_INT_K_DISABLE_ALL_INTS);



 (void) dfx_hw_dma_uninit(bp, PI_PDATA_A_RESET_M_SKIP_ST);
 dfx_xmt_flush(bp);
 bp->cmd_req_reg.lword = 0;
 bp->cmd_rsp_reg.lword = 0;
 bp->rcv_xmt_reg.lword = 0;



 memset(bp->cons_block_virt, 0, sizeof(PI_CONSUMER_BLOCK));



 dfx_rcv_flush(bp);



 netif_stop_queue(dev);



 free_irq(dev->irq, dev);

 return 0;
}
