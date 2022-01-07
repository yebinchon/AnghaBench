
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct atl1c_tpd_ring {int next_to_use; } ;
struct atl1c_tpd_desc {int dummy; } ;
struct atl1c_adapter {int hw; struct atl1c_tpd_ring* tpd_ring; } ;
typedef enum atl1c_trans_queue { ____Placeholder_atl1c_trans_queue } atl1c_trans_queue ;


 int AT_WRITE_REGW (int *,int ,int ) ;
 int REG_TPD_PRI0_PIDX ;
 int REG_TPD_PRI1_PIDX ;
 int atl1c_trans_high ;

__attribute__((used)) static void atl1c_tx_queue(struct atl1c_adapter *adapter, struct sk_buff *skb,
      struct atl1c_tpd_desc *tpd, enum atl1c_trans_queue type)
{
 struct atl1c_tpd_ring *tpd_ring = &adapter->tpd_ring[type];
 u16 reg;

 reg = type == atl1c_trans_high ? REG_TPD_PRI1_PIDX : REG_TPD_PRI0_PIDX;
 AT_WRITE_REGW(&adapter->hw, reg, tpd_ring->next_to_use);
}
