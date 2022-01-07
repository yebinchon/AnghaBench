
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ consume_idx; scalar_t__ count; } ;
struct emac_rx_queue {TYPE_1__ rrd; } ;
struct emac_rrd {int * word; } ;
struct emac_adapter {int netdev; int rrd_size; } ;


 int * EMAC_RRD (struct emac_rx_queue*,int ,scalar_t__) ;
 int RRD_NOR (struct emac_rrd*) ;
 int RRD_UPDT (struct emac_rrd*) ;
 int RRD_UPDT_SET (struct emac_rrd*,int ) ;
 int netdev_err (int ,char*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool emac_rx_process_rrd(struct emac_adapter *adpt,
    struct emac_rx_queue *rx_q,
    struct emac_rrd *rrd)
{
 u32 *hw_rrd = EMAC_RRD(rx_q, adpt->rrd_size, rx_q->rrd.consume_idx);

 rrd->word[3] = *(hw_rrd + 3);

 if (!RRD_UPDT(rrd))
  return 0;

 rrd->word[4] = 0;
 rrd->word[5] = 0;

 rrd->word[0] = *(hw_rrd++);
 rrd->word[1] = *(hw_rrd++);
 rrd->word[2] = *(hw_rrd++);

 if (unlikely(RRD_NOR(rrd) != 1)) {
  netdev_err(adpt->netdev,
      "error: multi-RFD not support yet! nor:%lu\n",
      RRD_NOR(rrd));
 }


 RRD_UPDT_SET(rrd, 0);
 *hw_rrd = rrd->word[3];

 if (++rx_q->rrd.consume_idx == rx_q->rrd.count)
  rx_q->rrd.consume_idx = 0;

 return 1;
}
