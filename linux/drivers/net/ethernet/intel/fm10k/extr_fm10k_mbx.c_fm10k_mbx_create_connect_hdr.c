
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; } ;
struct fm10k_mbx_info {int mbx_hdr; TYPE_1__ rx; scalar_t__ head; int mbx_lock; } ;


 int CONNECT_SIZE ;
 int FM10K_MBX_REQ ;
 scalar_t__ FM10K_MSG_CONNECT ;
 int FM10K_MSG_HDR_FIELD_SET (scalar_t__,int ) ;
 int HEAD ;
 int TYPE ;

__attribute__((used)) static void fm10k_mbx_create_connect_hdr(struct fm10k_mbx_info *mbx)
{
 mbx->mbx_lock |= FM10K_MBX_REQ;

 mbx->mbx_hdr = FM10K_MSG_HDR_FIELD_SET(FM10K_MSG_CONNECT, TYPE) |
         FM10K_MSG_HDR_FIELD_SET(mbx->head, HEAD) |
         FM10K_MSG_HDR_FIELD_SET(mbx->rx.size - 1, CONNECT_SIZE);
}
