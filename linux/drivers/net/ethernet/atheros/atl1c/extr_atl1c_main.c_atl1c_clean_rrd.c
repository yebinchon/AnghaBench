
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct atl1c_rrd_ring {scalar_t__ next_to_clean; scalar_t__ count; } ;
struct atl1c_recv_ret_status {int word3; } ;


 struct atl1c_recv_ret_status* ATL1C_RRD_DESC (struct atl1c_rrd_ring*,scalar_t__) ;
 int RRS_RXD_UPDATED ;

__attribute__((used)) static void atl1c_clean_rrd(struct atl1c_rrd_ring *rrd_ring,
   struct atl1c_recv_ret_status *rrs, u16 num)
{
 u16 i;

 for (i = 0; i < num; i++, rrs = ATL1C_RRD_DESC(rrd_ring,
     rrd_ring->next_to_clean)) {
  rrs->word3 &= ~RRS_RXD_UPDATED;
  if (++rrd_ring->next_to_clean == rrd_ring->count)
   rrd_ring->next_to_clean = 0;
 }
}
