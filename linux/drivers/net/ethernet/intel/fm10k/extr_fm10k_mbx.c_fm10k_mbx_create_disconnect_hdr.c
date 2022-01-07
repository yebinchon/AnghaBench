
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct fm10k_mbx_info {int mbx_hdr; int mbx_lock; int local; int head; int tail; } ;


 int CRC ;
 int FM10K_MBX_ACK ;
 int FM10K_MSG_DISCONNECT ;
 int FM10K_MSG_HDR_FIELD_SET (int ,int ) ;
 int HEAD ;
 int TAIL ;
 int TYPE ;
 int fm10k_crc_16b (int*,int ,int) ;

__attribute__((used)) static void fm10k_mbx_create_disconnect_hdr(struct fm10k_mbx_info *mbx)
{
 u32 hdr = FM10K_MSG_HDR_FIELD_SET(FM10K_MSG_DISCONNECT, TYPE) |
    FM10K_MSG_HDR_FIELD_SET(mbx->tail, TAIL) |
    FM10K_MSG_HDR_FIELD_SET(mbx->head, HEAD);
 u16 crc = fm10k_crc_16b(&hdr, mbx->local, 1);

 mbx->mbx_lock |= FM10K_MBX_ACK;


 mbx->mbx_hdr = hdr | FM10K_MSG_HDR_FIELD_SET(crc, CRC);
}
