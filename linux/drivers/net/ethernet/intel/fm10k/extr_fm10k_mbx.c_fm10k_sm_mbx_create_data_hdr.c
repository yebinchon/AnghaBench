
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_mbx_info {int mbx_hdr; int head; int remote; int tail; int mbx_lock; scalar_t__ tail_len; } ;


 int FM10K_MBX_REQ ;
 int FM10K_MSG_HDR_FIELD_SET (int ,int ) ;
 int SM_HEAD ;
 int SM_TAIL ;
 int SM_VER ;

__attribute__((used)) static void fm10k_sm_mbx_create_data_hdr(struct fm10k_mbx_info *mbx)
{
 if (mbx->tail_len)
  mbx->mbx_lock |= FM10K_MBX_REQ;

 mbx->mbx_hdr = FM10K_MSG_HDR_FIELD_SET(mbx->tail, SM_TAIL) |
         FM10K_MSG_HDR_FIELD_SET(mbx->remote, SM_VER) |
         FM10K_MSG_HDR_FIELD_SET(mbx->head, SM_HEAD);
}
