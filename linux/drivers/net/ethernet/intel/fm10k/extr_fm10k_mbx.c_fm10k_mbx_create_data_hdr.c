
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fm10k_mbx_fifo {int dummy; } ;
struct fm10k_mbx_info {int mbx_hdr; int local; int tail_len; int pulled; int mbx_lock; struct fm10k_mbx_fifo tx; int head; int tail; } ;


 int CRC ;
 int FM10K_MBX_REQ ;
 int FM10K_MSG_DATA ;
 int FM10K_MSG_HDR_FIELD_SET (int ,int ) ;
 int HEAD ;
 int TAIL ;
 int TYPE ;
 int fm10k_crc_16b (int*,int ,int) ;
 int fm10k_fifo_crc (struct fm10k_mbx_fifo*,int ,int ,int ) ;
 int fm10k_fifo_head_offset (struct fm10k_mbx_fifo*,int ) ;

__attribute__((used)) static void fm10k_mbx_create_data_hdr(struct fm10k_mbx_info *mbx)
{
 u32 hdr = FM10K_MSG_HDR_FIELD_SET(FM10K_MSG_DATA, TYPE) |
    FM10K_MSG_HDR_FIELD_SET(mbx->tail, TAIL) |
    FM10K_MSG_HDR_FIELD_SET(mbx->head, HEAD);
 struct fm10k_mbx_fifo *fifo = &mbx->tx;
 u16 crc;

 if (mbx->tail_len)
  mbx->mbx_lock |= FM10K_MBX_REQ;


 crc = fm10k_fifo_crc(fifo, fm10k_fifo_head_offset(fifo, mbx->pulled),
        mbx->tail_len, mbx->local);
 crc = fm10k_crc_16b(&hdr, crc, 1);


 mbx->mbx_hdr = hdr | FM10K_MSG_HDR_FIELD_SET(crc, CRC);
}
