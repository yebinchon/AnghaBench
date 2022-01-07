
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_droq {int pkts_pending; scalar_t__ refill_count; scalar_t__ refill_idx; scalar_t__ write_idx; scalar_t__ read_idx; } ;


 int atomic_set (int *,int ) ;

__attribute__((used)) static void octeon_droq_reset_indices(struct octeon_droq *droq)
{
 droq->read_idx = 0;
 droq->write_idx = 0;
 droq->refill_idx = 0;
 droq->refill_count = 0;
 atomic_set(&droq->pkts_pending, 0);
}
