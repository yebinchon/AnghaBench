
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sge_params {int dummy; } ;
struct TYPE_6__ {scalar_t__ size; int dma_addr; } ;
struct sge {int sge_control; int intrtimer_nres; int rx_pkt_pad; TYPE_3__ respQ; TYPE_2__* freelQ; TYPE_1__* cmdQ; struct adapter* adapter; } ;
struct adapter {scalar_t__ regs; } ;
struct TYPE_5__ {scalar_t__ size; int dma_addr; } ;
struct TYPE_4__ {scalar_t__ size; int dma_addr; } ;


 int A_SG_CMD0BASELWR ;
 int A_SG_CMD0BASEUPR ;
 int A_SG_CMD0SIZE ;
 int A_SG_CMD1BASELWR ;
 int A_SG_CMD1BASEUPR ;
 int A_SG_CMD1SIZE ;
 scalar_t__ A_SG_CONTROL ;
 int A_SG_FL0BASELWR ;
 int A_SG_FL0BASEUPR ;
 int A_SG_FL0SIZE ;
 int A_SG_FL1BASELWR ;
 int A_SG_FL1BASEUPR ;
 int A_SG_FL1SIZE ;
 scalar_t__ A_SG_FLTHRESHOLD ;
 int A_SG_RSPBASELWR ;
 int A_SG_RSPBASEUPR ;
 scalar_t__ A_SG_RSPQUEUECREDIT ;
 int A_SG_RSPSIZE ;
 int F_CMDQ0_ENABLE ;
 int F_CMDQ1_ENABLE ;
 int F_CPL_ENABLE ;
 int F_DISABLE_CMDQ1_GTS ;
 int F_ENABLE_BIG_ENDIAN ;
 int F_FL0_ENABLE ;
 int F_FL1_ENABLE ;
 int F_ISCSI_COALESCE ;
 int F_RESPONSE_QUEUE_ENABLE ;
 int SGE_INTRTIMER_NRES ;
 scalar_t__ SGE_RX_SM_BUF_SIZE ;
 int V_CMDQ_PRIORITY (int) ;
 int V_RX_PKT_OFFSET (int ) ;
 int core_ticks_per_usec (struct adapter*) ;
 int setup_ring_params (struct adapter*,int ,scalar_t__,int ,int ,int ) ;
 int t1_sge_set_coalesce_params (struct sge*,struct sge_params*) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void configure_sge(struct sge *sge, struct sge_params *p)
{
 struct adapter *ap = sge->adapter;

 writel(0, ap->regs + A_SG_CONTROL);
 setup_ring_params(ap, sge->cmdQ[0].dma_addr, sge->cmdQ[0].size,
     A_SG_CMD0BASELWR, A_SG_CMD0BASEUPR, A_SG_CMD0SIZE);
 setup_ring_params(ap, sge->cmdQ[1].dma_addr, sge->cmdQ[1].size,
     A_SG_CMD1BASELWR, A_SG_CMD1BASEUPR, A_SG_CMD1SIZE);
 setup_ring_params(ap, sge->freelQ[0].dma_addr,
     sge->freelQ[0].size, A_SG_FL0BASELWR,
     A_SG_FL0BASEUPR, A_SG_FL0SIZE);
 setup_ring_params(ap, sge->freelQ[1].dma_addr,
     sge->freelQ[1].size, A_SG_FL1BASELWR,
     A_SG_FL1BASEUPR, A_SG_FL1SIZE);


 writel(SGE_RX_SM_BUF_SIZE + 1, ap->regs + A_SG_FLTHRESHOLD);

 setup_ring_params(ap, sge->respQ.dma_addr, sge->respQ.size,
     A_SG_RSPBASELWR, A_SG_RSPBASEUPR, A_SG_RSPSIZE);
 writel((u32)sge->respQ.size - 1, ap->regs + A_SG_RSPQUEUECREDIT);

 sge->sge_control = F_CMDQ0_ENABLE | F_CMDQ1_ENABLE | F_FL0_ENABLE |
  F_FL1_ENABLE | F_CPL_ENABLE | F_RESPONSE_QUEUE_ENABLE |
  V_CMDQ_PRIORITY(2) | F_DISABLE_CMDQ1_GTS | F_ISCSI_COALESCE |
  V_RX_PKT_OFFSET(sge->rx_pkt_pad);






 sge->intrtimer_nres = SGE_INTRTIMER_NRES * core_ticks_per_usec(ap);

 t1_sge_set_coalesce_params(sge, p);
}
