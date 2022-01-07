
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slic_stat_queue {unsigned int active_array; size_t done_idx; int len; int * paddr; struct slic_stat_desc** descs; } ;
struct slic_stat_desc {scalar_t__ status; scalar_t__ hnd; } ;
struct slic_device {struct slic_stat_queue stq; } ;
typedef int dma_addr_t ;


 unsigned int SLIC_INVALID_STAT_DESC_IDX ;
 int SLIC_NUM_STAT_DESC_ARRAYS ;
 int SLIC_REG_RBAR ;
 int le32_to_cpu (scalar_t__) ;
 int lower_32_bits (int ) ;
 int slic_flush_write (struct slic_device*) ;
 size_t slic_next_queue_idx (size_t,int) ;
 int slic_write (struct slic_device*,int ,int) ;

__attribute__((used)) static unsigned int slic_next_compl_idx(struct slic_device *sdev)
{
 struct slic_stat_queue *stq = &sdev->stq;
 unsigned int active = stq->active_array;
 struct slic_stat_desc *descs;
 struct slic_stat_desc *stat;
 unsigned int idx;

 descs = stq->descs[active];
 stat = &descs[stq->done_idx];

 if (!stat->status)
  return SLIC_INVALID_STAT_DESC_IDX;

 idx = (le32_to_cpu(stat->hnd) & 0xffff) - 1;

 stat->hnd = 0;
 stat->status = 0;

 stq->done_idx = slic_next_queue_idx(stq->done_idx, stq->len);

 if (!stq->done_idx) {
  dma_addr_t paddr = stq->paddr[active];

  slic_write(sdev, SLIC_REG_RBAR, lower_32_bits(paddr) |
      stq->len);

  slic_flush_write(sdev);
  active++;
  active &= (SLIC_NUM_STAT_DESC_ARRAYS - 1);
  stq->active_array = active;
 }
 return idx;
}
