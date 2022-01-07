
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef uintptr_t u32 ;
struct TYPE_6__ {uintptr_t addr; int lkey; int length; } ;
struct postsend_info {TYPE_2__ write; } ;
struct mlx5dr_send_ring {int tx_head; int signal_th; int max_post_send_size; int qp; TYPE_4__* mr; scalar_t__ buf; } ;
struct TYPE_5__ {int max_inline_size; } ;
struct mlx5dr_domain {struct mlx5dr_send_ring* send_ring; TYPE_1__ info; } ;
struct TYPE_7__ {int key; } ;
struct TYPE_8__ {TYPE_3__ mkey; scalar_t__ dma_addr; } ;


 int dr_fill_data_segs (struct mlx5dr_send_ring*,struct postsend_info*) ;
 int dr_handle_pending_wc (struct mlx5dr_domain*,struct mlx5dr_send_ring*) ;
 int dr_post_send (int ,struct postsend_info*) ;
 int memcpy (scalar_t__,void*,int ) ;

__attribute__((used)) static int dr_postsend_icm_data(struct mlx5dr_domain *dmn,
    struct postsend_info *send_info)
{
 struct mlx5dr_send_ring *send_ring = dmn->send_ring;
 u32 buff_offset;
 int ret;

 ret = dr_handle_pending_wc(dmn, send_ring);
 if (ret)
  return ret;

 if (send_info->write.length > dmn->info.max_inline_size) {
  buff_offset = (send_ring->tx_head &
          (dmn->send_ring->signal_th - 1)) *
   send_ring->max_post_send_size;

  memcpy(send_ring->buf + buff_offset,
         (void *)(uintptr_t)send_info->write.addr,
         send_info->write.length);
  send_info->write.addr = (uintptr_t)send_ring->mr->dma_addr + buff_offset;
  send_info->write.lkey = send_ring->mr->mkey.key;
 }

 send_ring->tx_head++;
 dr_fill_data_segs(send_ring, send_info);
 dr_post_send(send_ring->qp, send_info);

 return 0;
}
