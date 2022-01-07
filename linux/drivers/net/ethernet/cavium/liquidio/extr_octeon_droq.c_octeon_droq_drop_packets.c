
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct octeon_droq_info {scalar_t__ length; } ;
struct TYPE_5__ {int bytes_received; } ;
struct octeon_droq {size_t read_idx; scalar_t__ refill_count; int max_count; int buffer_size; TYPE_2__ stats; TYPE_1__* recv_buf_list; } ;
struct octeon_device {TYPE_3__* pci_dev; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {scalar_t__ data; } ;


 scalar_t__ OCTNET_FRM_LENGTH_SIZE ;
 int dev_err (int *,char*) ;
 size_t incr_index (size_t,scalar_t__,int ) ;
 scalar_t__ octeon_droq_get_bufcount (int ,scalar_t__) ;
 int octeon_swap_8B_data (int *,int) ;

__attribute__((used)) static inline void octeon_droq_drop_packets(struct octeon_device *oct,
         struct octeon_droq *droq,
         u32 cnt)
{
 u32 i = 0, buf_cnt;
 struct octeon_droq_info *info;

 for (i = 0; i < cnt; i++) {
  info = (struct octeon_droq_info *)
   droq->recv_buf_list[droq->read_idx].data;
  octeon_swap_8B_data((u64 *)info, 2);

  if (info->length) {
   info->length += OCTNET_FRM_LENGTH_SIZE;
   droq->stats.bytes_received += info->length;
   buf_cnt = octeon_droq_get_bufcount(droq->buffer_size,
          (u32)info->length);
  } else {
   dev_err(&oct->pci_dev->dev, "DROQ: In drop: pkt with len 0\n");
   buf_cnt = 1;
  }

  droq->read_idx = incr_index(droq->read_idx, buf_cnt,
         droq->max_count);
  droq->refill_count += buf_cnt;
 }
}
