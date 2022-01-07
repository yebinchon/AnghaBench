
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int pkt_mismatch; int pkt_too_big; int freelistQ_empty; int respQ_overflow; int respQ_empty; } ;
struct sge {TYPE_3__ stats; struct adapter* adapter; } ;
struct adapter {scalar_t__ regs; int name; TYPE_2__* port; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {int hw_features; } ;


 scalar_t__ A_SG_INT_CAUSE ;
 int F_FL_EXHAUSTED ;
 int F_PACKET_MISMATCH ;
 int F_PACKET_TOO_BIG ;
 int F_RESPQ_EXHAUSTED ;
 int F_RESPQ_OVERFLOW ;
 int NETIF_F_TSO ;
 int SGE_INT_FATAL ;
 int freelQs_empty (struct sge*) ;
 int pr_alert (char*,int ) ;
 int readl (scalar_t__) ;
 int t1_fatal_err (struct adapter*) ;
 int writel (int,scalar_t__) ;

int t1_sge_intr_error_handler(struct sge *sge)
{
 struct adapter *adapter = sge->adapter;
 u32 cause = readl(adapter->regs + A_SG_INT_CAUSE);

 if (adapter->port[0].dev->hw_features & NETIF_F_TSO)
  cause &= ~F_PACKET_TOO_BIG;
 if (cause & F_RESPQ_EXHAUSTED)
  sge->stats.respQ_empty++;
 if (cause & F_RESPQ_OVERFLOW) {
  sge->stats.respQ_overflow++;
  pr_alert("%s: SGE response queue overflow\n",
    adapter->name);
 }
 if (cause & F_FL_EXHAUSTED) {
  sge->stats.freelistQ_empty++;
  freelQs_empty(sge);
 }
 if (cause & F_PACKET_TOO_BIG) {
  sge->stats.pkt_too_big++;
  pr_alert("%s: SGE max packet size exceeded\n",
    adapter->name);
 }
 if (cause & F_PACKET_MISMATCH) {
  sge->stats.pkt_mismatch++;
  pr_alert("%s: SGE packet mismatch\n", adapter->name);
 }
 if (cause & SGE_INT_FATAL)
  t1_fatal_err(adapter);

 writel(cause, adapter->regs + A_SG_INT_CAUSE);
 return 0;
}
