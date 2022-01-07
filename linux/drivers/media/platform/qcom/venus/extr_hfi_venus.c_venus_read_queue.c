
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct venus_hfi_device {int dummy; } ;
struct TYPE_2__ {int* kva; } ;
struct iface_queue {TYPE_1__ qmem; struct hfi_queue_header* qhdr; } ;
struct hfi_queue_header {int type; int read_idx; int write_idx; int q_size; int rx_req; scalar_t__ tx_req; } ;


 int EBADMSG ;
 int EINVAL ;
 int ENODATA ;
 int HFI_CTRL_TO_HOST_MSG_Q ;
 int IFACEQ_VAR_HUGE_PKT_SIZE ;
 int mb () ;
 int memcpy (void*,int*,int) ;
 int rmb () ;
 int venus_dump_packet (struct venus_hfi_device*,void*) ;
 int wmb () ;

__attribute__((used)) static int venus_read_queue(struct venus_hfi_device *hdev,
       struct iface_queue *queue, void *pkt, u32 *tx_req)
{
 struct hfi_queue_header *qhdr;
 u32 dwords, new_rd_idx;
 u32 rd_idx, wr_idx, type, qsize;
 u32 *rd_ptr;
 u32 recv_request = 0;
 int ret = 0;

 if (!queue->qmem.kva)
  return -EINVAL;

 qhdr = queue->qhdr;
 if (!qhdr)
  return -EINVAL;

 type = qhdr->type;
 rd_idx = qhdr->read_idx;
 wr_idx = qhdr->write_idx;
 qsize = qhdr->q_size;


 rmb();
 if (type & HFI_CTRL_TO_HOST_MSG_Q)
  recv_request = 1;

 if (rd_idx == wr_idx) {
  qhdr->rx_req = recv_request;
  *tx_req = 0;

  wmb();
  return -ENODATA;
 }

 rd_ptr = (u32 *)(queue->qmem.kva + (rd_idx << 2));
 dwords = *rd_ptr >> 2;
 if (!dwords)
  return -EINVAL;

 new_rd_idx = rd_idx + dwords;
 if (((dwords << 2) <= IFACEQ_VAR_HUGE_PKT_SIZE) && rd_idx <= qsize) {
  if (new_rd_idx < qsize) {
   memcpy(pkt, rd_ptr, dwords << 2);
  } else {
   size_t len;

   new_rd_idx -= qsize;
   len = (dwords - new_rd_idx) << 2;
   memcpy(pkt, rd_ptr, len);
   memcpy(pkt + len, queue->qmem.kva, new_rd_idx << 2);
  }
 } else {

  new_rd_idx = qhdr->write_idx;
  ret = -EBADMSG;
 }


 rmb();

 qhdr->read_idx = new_rd_idx;

 wmb();

 rd_idx = qhdr->read_idx;
 wr_idx = qhdr->write_idx;

 rmb();

 if (rd_idx != wr_idx)
  qhdr->rx_req = 0;
 else
  qhdr->rx_req = recv_request;

 *tx_req = qhdr->tx_req ? 1 : 0;


 mb();

 venus_dump_packet(hdev, pkt);

 return ret;
}
