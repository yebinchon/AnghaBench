
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int vf_os; } ;
struct TYPE_3__ {int num_mc_filters; } ;
struct vfpf_acquire_tlv {TYPE_2__ vfdev_info; TYPE_1__ resc_request; int bulletin_addr; } ;
struct bnx2x {int dummy; } ;


 int VF_OS_MASK ;
 int VF_OS_WINDOWS ;

__attribute__((used)) static bool bnx2x_vf_mbx_is_windows_vm(struct bnx2x *bp,
           struct vfpf_acquire_tlv *acquire)
{





 if (!acquire->bulletin_addr ||
     acquire->resc_request.num_mc_filters == 32 ||
     ((acquire->vfdev_info.vf_os & VF_OS_MASK) ==
      VF_OS_WINDOWS))
  return 1;

 return 0;
}
