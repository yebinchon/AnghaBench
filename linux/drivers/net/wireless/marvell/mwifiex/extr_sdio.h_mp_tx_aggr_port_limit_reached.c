
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int start_port; } ;
struct sdio_mmc_card {int curr_wr_port; int mp_end_port; int mp_agg_pkt_limit; int max_ports; TYPE_1__ mpa_tx; scalar_t__ supports_sdio_new_mode; } ;



__attribute__((used)) static inline bool
mp_tx_aggr_port_limit_reached(struct sdio_mmc_card *card)
{
 u16 tmp;

 if (card->curr_wr_port < card->mpa_tx.start_port) {
  if (card->supports_sdio_new_mode)
   tmp = card->mp_end_port >> 1;
  else
   tmp = card->mp_agg_pkt_limit;

  if (((card->max_ports - card->mpa_tx.start_port) +
      card->curr_wr_port) >= tmp)
   return 1;
 }

 if (!card->supports_sdio_new_mode)
  return 0;

 if ((card->curr_wr_port - card->mpa_tx.start_port) >=
     (card->mp_end_port >> 1))
  return 1;

 return 0;
}
