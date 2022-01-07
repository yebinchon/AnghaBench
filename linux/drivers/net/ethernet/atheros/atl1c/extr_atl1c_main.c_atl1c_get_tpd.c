
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct atl1c_tpd_ring {scalar_t__ next_to_use; scalar_t__ count; } ;
struct atl1c_tpd_desc {int dummy; } ;
struct atl1c_adapter {struct atl1c_tpd_ring* tpd_ring; } ;
typedef enum atl1c_trans_queue { ____Placeholder_atl1c_trans_queue } atl1c_trans_queue ;


 struct atl1c_tpd_desc* ATL1C_TPD_DESC (struct atl1c_tpd_ring*,scalar_t__) ;
 int memset (struct atl1c_tpd_desc*,int ,int) ;

__attribute__((used)) static struct atl1c_tpd_desc *atl1c_get_tpd(struct atl1c_adapter *adapter,
 enum atl1c_trans_queue type)
{
 struct atl1c_tpd_ring *tpd_ring = &adapter->tpd_ring[type];
 struct atl1c_tpd_desc *tpd_desc;
 u16 next_to_use = 0;

 next_to_use = tpd_ring->next_to_use;
 if (++tpd_ring->next_to_use == tpd_ring->count)
  tpd_ring->next_to_use = 0;
 tpd_desc = ATL1C_TPD_DESC(tpd_ring, next_to_use);
 memset(tpd_desc, 0, sizeof(struct atl1c_tpd_desc));
 return tpd_desc;
}
