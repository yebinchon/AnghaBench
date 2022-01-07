
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {uintptr_t addr; int send_flags; int lkey; int length; } ;
struct TYPE_5__ {scalar_t__ addr; int length; int send_flags; } ;
struct postsend_info {TYPE_4__ read; TYPE_1__ write; } ;
struct mlx5dr_send_ring {int pending_wqe; int signal_th; TYPE_3__* mr; } ;
struct TYPE_6__ {int key; } ;
struct TYPE_7__ {TYPE_2__ mkey; } ;


 int IB_SEND_SIGNALED ;

__attribute__((used)) static void dr_fill_data_segs(struct mlx5dr_send_ring *send_ring,
         struct postsend_info *send_info)
{
 send_ring->pending_wqe++;

 if (send_ring->pending_wqe % send_ring->signal_th == 0)
  send_info->write.send_flags |= IB_SEND_SIGNALED;

 send_ring->pending_wqe++;
 send_info->read.length = send_info->write.length;

 send_info->read.addr = (uintptr_t)send_info->write.addr;
 send_info->read.lkey = send_ring->mr->mkey.key;

 if (send_ring->pending_wqe % send_ring->signal_th == 0)
  send_info->read.send_flags = IB_SEND_SIGNALED;
 else
  send_info->read.send_flags = 0;
}
