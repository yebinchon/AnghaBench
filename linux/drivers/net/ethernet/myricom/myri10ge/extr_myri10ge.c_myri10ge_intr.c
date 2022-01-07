
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct myri10ge_tx_buf {scalar_t__ pkt_done; } ;
struct myri10ge_slice_state {scalar_t__ irq_claim; int napi; struct myri10ge_tx_buf tx; struct mcp_irq_data* fw_stats; struct myri10ge_priv* mgp; } ;
struct myri10ge_priv {struct myri10ge_slice_state* ss; int watchdog_work; TYPE_1__* dev; scalar_t__ irq_deassert; int msix_enabled; int msi_enabled; } ;
struct mcp_irq_data {int valid; int send_done_count; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int real_num_tx_queues; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int barrier () ;
 int cpu_relax () ;
 int htonl (int) ;
 scalar_t__ likely (int) ;
 int mb () ;
 int myri10ge_check_statblock (struct myri10ge_priv*) ;
 int myri10ge_deassert_wait ;
 int myri10ge_max_irq_loops ;
 int myri10ge_tx_done (struct myri10ge_slice_state*,int) ;
 int napi_schedule (int *) ;
 int netdev_warn (TYPE_1__*,char*) ;
 scalar_t__ ntohl (int ) ;
 int put_be32 (int ,scalar_t__) ;
 int schedule_work (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t myri10ge_intr(int irq, void *arg)
{
 struct myri10ge_slice_state *ss = arg;
 struct myri10ge_priv *mgp = ss->mgp;
 struct mcp_irq_data *stats = ss->fw_stats;
 struct myri10ge_tx_buf *tx = &ss->tx;
 u32 send_done_count;
 int i;



 if ((mgp->dev->real_num_tx_queues == 1) && (ss != mgp->ss)) {
  napi_schedule(&ss->napi);
  return IRQ_HANDLED;
 }


 if (unlikely(!stats->valid))
  return IRQ_NONE;



 if (stats->valid & 1)
  napi_schedule(&ss->napi);

 if (!mgp->msi_enabled && !mgp->msix_enabled) {
  put_be32(0, mgp->irq_deassert);
  if (!myri10ge_deassert_wait)
   stats->valid = 0;
  mb();
 } else
  stats->valid = 0;


 i = 0;
 while (1) {
  i++;

  send_done_count = ntohl(stats->send_done_count);
  if (send_done_count != tx->pkt_done)
   myri10ge_tx_done(ss, (int)send_done_count);
  if (unlikely(i > myri10ge_max_irq_loops)) {
   netdev_warn(mgp->dev, "irq stuck?\n");
   stats->valid = 0;
   schedule_work(&mgp->watchdog_work);
  }
  if (likely(stats->valid == 0))
   break;
  cpu_relax();
  barrier();
 }


 if (ss == mgp->ss)
  myri10ge_check_statblock(mgp);

 put_be32(htonl(3), ss->irq_claim + 1);
 return IRQ_HANDLED;
}
