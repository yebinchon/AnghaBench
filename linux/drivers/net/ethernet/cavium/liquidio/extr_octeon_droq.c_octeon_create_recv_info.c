
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
typedef void* u16 ;
struct octeon_skb_page_info {scalar_t__ dma; int * page; } ;
struct octeon_recv_pkt {size_t length; size_t* buffer_size; int ** buffer_ptr; void* octeon_id; void* buffer_count; int rh; } ;
struct octeon_recv_info {struct octeon_recv_pkt* recv_pkt; } ;
struct octeon_droq_info {scalar_t__ length; int rh; } ;
struct octeon_droq {size_t buffer_size; int max_count; TYPE_1__* recv_buf_list; } ;
struct octeon_device {int pci_dev; scalar_t__ octeon_id; } ;
struct __dispatch {int dummy; } ;
struct TYPE_2__ {int * buffer; struct octeon_skb_page_info pg_info; scalar_t__ data; } ;


 size_t incr_index (size_t,int,int ) ;
 int lio_unmap_ring (int ,int ) ;
 struct octeon_recv_info* octeon_alloc_recv_info (int) ;

__attribute__((used)) static inline struct octeon_recv_info *octeon_create_recv_info(
  struct octeon_device *octeon_dev,
  struct octeon_droq *droq,
  u32 buf_cnt,
  u32 idx)
{
 struct octeon_droq_info *info;
 struct octeon_recv_pkt *recv_pkt;
 struct octeon_recv_info *recv_info;
 u32 i, bytes_left;
 struct octeon_skb_page_info *pg_info;

 info = (struct octeon_droq_info *)droq->recv_buf_list[idx].data;

 recv_info = octeon_alloc_recv_info(sizeof(struct __dispatch));
 if (!recv_info)
  return ((void*)0);

 recv_pkt = recv_info->recv_pkt;
 recv_pkt->rh = info->rh;
 recv_pkt->length = (u32)info->length;
 recv_pkt->buffer_count = (u16)buf_cnt;
 recv_pkt->octeon_id = (u16)octeon_dev->octeon_id;

 i = 0;
 bytes_left = (u32)info->length;

 while (buf_cnt) {
  {
   pg_info = &droq->recv_buf_list[idx].pg_info;

   lio_unmap_ring(octeon_dev->pci_dev,
           (u64)pg_info->dma);
   pg_info->page = ((void*)0);
   pg_info->dma = 0;
  }

  recv_pkt->buffer_size[i] =
   (bytes_left >=
    droq->buffer_size) ? droq->buffer_size : bytes_left;

  recv_pkt->buffer_ptr[i] = droq->recv_buf_list[idx].buffer;
  droq->recv_buf_list[idx].buffer = ((void*)0);

  idx = incr_index(idx, 1, droq->max_count);
  bytes_left -= droq->buffer_size;
  i++;
  buf_cnt--;
 }

 return recv_info;
}
