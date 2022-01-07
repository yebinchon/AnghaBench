
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct octeon_droq {int pkts_pending; scalar_t__ pkt_count; int pkts_sent_reg; } ;


 int atomic_add (scalar_t__,int *) ;
 scalar_t__ readl (int ) ;

u32 octeon_droq_check_hw_for_pkts(struct octeon_droq *droq)
{
 u32 pkt_count = 0;
 u32 last_count;

 pkt_count = readl(droq->pkts_sent_reg);

 last_count = pkt_count - droq->pkt_count;
 droq->pkt_count = pkt_count;


 if (last_count)
  atomic_add(last_count, &droq->pkts_pending);

 return last_count;
}
