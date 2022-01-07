
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct gve_tx_ring {scalar_t__ done; scalar_t__ req; scalar_t__ mask; } ;



__attribute__((used)) static inline u32 gve_tx_avail(struct gve_tx_ring *tx)
{
 return tx->mask + 1 - (tx->req - tx->done);
}
