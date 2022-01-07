
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct fm10k_mbx_fifo {int dummy; } ;
struct fm10k_mbx_info {int remote; int mbx_hdr; int pushed; scalar_t__ head_len; struct fm10k_mbx_fifo rx; } ;
typedef int s32 ;


 int FM10K_MBX_ERR_CRC ;
 scalar_t__ fm10k_crc_16b (int *,int ,int) ;
 int fm10k_fifo_crc (struct fm10k_mbx_fifo*,scalar_t__,scalar_t__,int ) ;
 scalar_t__ fm10k_fifo_tail_offset (struct fm10k_mbx_fifo*,int ) ;

__attribute__((used)) static s32 fm10k_mbx_verify_remote_crc(struct fm10k_mbx_info *mbx)
{
 struct fm10k_mbx_fifo *fifo = &mbx->rx;
 u16 len = mbx->head_len;
 u16 offset = fm10k_fifo_tail_offset(fifo, mbx->pushed) - len;
 u16 crc;


 if (len)
  mbx->remote = fm10k_fifo_crc(fifo, offset, len, mbx->remote);


 crc = fm10k_crc_16b(&mbx->mbx_hdr, mbx->remote, 1);


 return crc ? FM10K_MBX_ERR_CRC : 0;
}
