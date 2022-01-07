
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_rx_swbd {int dummy; } ;
struct enetc_bdr {size_t next_to_alloc; struct enetc_rx_swbd* rx_swbd; } ;


 int enetc_bdr_idx_inc (struct enetc_bdr*,size_t*) ;

__attribute__((used)) static void enetc_reuse_page(struct enetc_bdr *rx_ring,
        struct enetc_rx_swbd *old)
{
 struct enetc_rx_swbd *new;

 new = &rx_ring->rx_swbd[rx_ring->next_to_alloc];


 enetc_bdr_idx_inc(rx_ring, &rx_ring->next_to_alloc);


 *new = *old;
}
