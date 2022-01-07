
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nx_host_tx_ring {int num_desc; int sw_consumer; int producer; } ;


 int find_diff_among (int ,int ,int ) ;
 int smp_mb () ;

__attribute__((used)) static inline u32 netxen_tx_avail(struct nx_host_tx_ring *tx_ring)
{
 smp_mb();
 return find_diff_among(tx_ring->producer,
   tx_ring->sw_consumer, tx_ring->num_desc);

}
