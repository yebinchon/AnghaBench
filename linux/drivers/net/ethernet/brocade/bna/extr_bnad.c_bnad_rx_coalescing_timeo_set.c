
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnad_rx_info {int rx; } ;
struct bnad {int num_rx; int rx_coalescing_timeo; struct bnad_rx_info* rx_info; } ;


 int bna_rx_coalescing_timeo_set (int ,int ) ;

void
bnad_rx_coalescing_timeo_set(struct bnad *bnad)
{
 struct bnad_rx_info *rx_info;
 int i;

 for (i = 0; i < bnad->num_rx; i++) {
  rx_info = &bnad->rx_info[i];
  if (!rx_info->rx)
   continue;
  bna_rx_coalescing_timeo_set(rx_info->rx,
    bnad->rx_coalescing_timeo);
 }
}
