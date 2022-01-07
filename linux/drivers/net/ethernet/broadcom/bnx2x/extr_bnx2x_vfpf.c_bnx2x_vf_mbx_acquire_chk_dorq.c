
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnx2x_virtf {int dummy; } ;
struct bnx2x_vf_mbx {TYPE_1__* msg; } ;
struct bnx2x {int dummy; } ;
struct TYPE_4__ {int acquire; } ;
struct TYPE_3__ {TYPE_2__ req; } ;


 int CHANNEL_TLV_PHYS_PORT_ID ;
 int EOPNOTSUPP ;
 scalar_t__ bnx2x_search_tlv_list (struct bnx2x*,TYPE_2__*,int ) ;
 scalar_t__ bnx2x_vf_mbx_is_windows_vm (struct bnx2x*,int *) ;

__attribute__((used)) static int bnx2x_vf_mbx_acquire_chk_dorq(struct bnx2x *bp,
      struct bnx2x_virtf *vf,
      struct bnx2x_vf_mbx *mbx)
{



 if (bnx2x_search_tlv_list(bp, &mbx->msg->req,
      CHANNEL_TLV_PHYS_PORT_ID))
  return 0;


 if (bnx2x_vf_mbx_is_windows_vm(bp, &mbx->msg->req.acquire))
  return 0;

 return -EOPNOTSUPP;
}
