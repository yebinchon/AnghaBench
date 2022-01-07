
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_mbx_info {int mbx_hdr; int head; int mbx_lock; } ;
typedef int s32 ;


 int ERR_NO ;






 int FM10K_MBX_REQ ;
 int FM10K_MSG_ERROR ;
 int FM10K_MSG_HDR_FIELD_SET (int,int ) ;
 int HEAD ;
 int TYPE ;

__attribute__((used)) static void fm10k_mbx_create_error_msg(struct fm10k_mbx_info *mbx, s32 err)
{

 switch (err) {
 case 129:
 case 132:
 case 128:
 case 130:
 case 131:
 case 133:
  break;
 default:
  return;
 }

 mbx->mbx_lock |= FM10K_MBX_REQ;

 mbx->mbx_hdr = FM10K_MSG_HDR_FIELD_SET(FM10K_MSG_ERROR, TYPE) |
         FM10K_MSG_HDR_FIELD_SET(err, ERR_NO) |
         FM10K_MSG_HDR_FIELD_SET(mbx->head, HEAD);
}
