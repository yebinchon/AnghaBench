
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pg_reuses; int pg_losts; int pg_flips; } ;
struct TYPE_6__ {TYPE_1__ rx; } ;
struct aq_ring_s {int aq_nic; TYPE_2__ stats; } ;
struct TYPE_7__ {int pg_off; scalar_t__ page; } ;
struct aq_ring_buff_s {TYPE_3__ rxdata; } ;


 int AQ_CFG_RX_FRAME_MAX ;
 int PAGE_SIZE ;
 int aq_free_rxpage (TYPE_3__*,int ) ;
 int aq_get_rxpage (TYPE_3__*,int,int ) ;
 int aq_nic_get_dev (int ) ;
 int page_ref_count (scalar_t__) ;

__attribute__((used)) static int aq_get_rxpages(struct aq_ring_s *self, struct aq_ring_buff_s *rxbuf,
     int order)
{
 int ret;

 if (rxbuf->rxdata.page) {

  if (page_ref_count(rxbuf->rxdata.page) > 1) {

   rxbuf->rxdata.pg_off += AQ_CFG_RX_FRAME_MAX;
   if (rxbuf->rxdata.pg_off + AQ_CFG_RX_FRAME_MAX <=
    (PAGE_SIZE << order)) {
    self->stats.rx.pg_flips++;
   } else {



    aq_free_rxpage(&rxbuf->rxdata,
            aq_nic_get_dev(self->aq_nic));
    self->stats.rx.pg_losts++;
   }
  } else {
   rxbuf->rxdata.pg_off = 0;
   self->stats.rx.pg_reuses++;
  }
 }

 if (!rxbuf->rxdata.page) {
  ret = aq_get_rxpage(&rxbuf->rxdata, order,
        aq_nic_get_dev(self->aq_nic));
  return ret;
 }

 return 0;
}
