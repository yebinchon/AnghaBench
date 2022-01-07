
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt76x02_tx_status {int valid; int success; int aggr; int ack_req; void* pktid; void* retry; void* rate; void* wcid; } ;
struct mt76x02_dev {int dummy; } ;


 void* FIELD_GET (int ,int) ;
 int MT_TX_STAT_FIFO ;
 int MT_TX_STAT_FIFO_ACKREQ ;
 int MT_TX_STAT_FIFO_AGGR ;
 int MT_TX_STAT_FIFO_EXT ;
 int MT_TX_STAT_FIFO_EXT_PKTID ;
 int MT_TX_STAT_FIFO_EXT_RETRY ;
 int MT_TX_STAT_FIFO_RATE ;
 int MT_TX_STAT_FIFO_SUCCESS ;
 int MT_TX_STAT_FIFO_VALID ;
 int MT_TX_STAT_FIFO_WCID ;
 int mt76_rr (struct mt76x02_dev*,int ) ;
 int trace_mac_txstat_fetch (struct mt76x02_dev*,struct mt76x02_tx_status*) ;

bool mt76x02_mac_load_tx_status(struct mt76x02_dev *dev,
    struct mt76x02_tx_status *stat)
{
 u32 stat1, stat2;

 stat2 = mt76_rr(dev, MT_TX_STAT_FIFO_EXT);
 stat1 = mt76_rr(dev, MT_TX_STAT_FIFO);

 stat->valid = !!(stat1 & MT_TX_STAT_FIFO_VALID);
 if (!stat->valid)
  return 0;

 stat->success = !!(stat1 & MT_TX_STAT_FIFO_SUCCESS);
 stat->aggr = !!(stat1 & MT_TX_STAT_FIFO_AGGR);
 stat->ack_req = !!(stat1 & MT_TX_STAT_FIFO_ACKREQ);
 stat->wcid = FIELD_GET(MT_TX_STAT_FIFO_WCID, stat1);
 stat->rate = FIELD_GET(MT_TX_STAT_FIFO_RATE, stat1);

 stat->retry = FIELD_GET(MT_TX_STAT_FIFO_EXT_RETRY, stat2);
 stat->pktid = FIELD_GET(MT_TX_STAT_FIFO_EXT_PKTID, stat2);

 trace_mac_txstat_fetch(dev, stat);

 return 1;
}
