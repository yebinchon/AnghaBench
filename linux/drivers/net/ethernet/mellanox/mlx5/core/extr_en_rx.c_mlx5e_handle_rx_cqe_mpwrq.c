
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef size_t u16 ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {int next_wqe_index; } ;
struct mlx5e_rx_wqe_ll {TYPE_3__ next; } ;
struct mlx5e_rq_stats {int mpwqe_filler_strides; int mpwqe_filler_cqes; int wqe_err; } ;
struct mlx5_wq_ll {int dummy; } ;
struct TYPE_5__ {size_t log_stride_sz; scalar_t__ num_strides; struct mlx5_wq_ll wq; int skb_from_cqe_mpwrq; struct mlx5e_mpw_info* info; } ;
struct TYPE_4__ {int napi; } ;
struct mlx5e_rq {TYPE_2__ mpwqe; TYPE_1__ cq; struct mlx5e_rq_stats* stats; } ;
struct mlx5e_mpw_info {size_t consumed_strides; } ;
struct mlx5_cqe64 {int wqe_id; } ;


 struct sk_buff* INDIRECT_CALL_2 (int ,int ,int ,struct mlx5e_rq*,struct mlx5e_mpw_info*,size_t,int,int) ;
 int MLX5E_RX_ERR_CQE (struct mlx5_cqe64*) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 size_t be16_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 struct mlx5e_rx_wqe_ll* mlx5_wq_ll_get_wqe (struct mlx5_wq_ll*,size_t) ;
 int mlx5_wq_ll_pop (struct mlx5_wq_ll*,int ,int *) ;
 int mlx5e_complete_rx_cqe (struct mlx5e_rq*,struct mlx5_cqe64*,size_t,struct sk_buff*) ;
 int mlx5e_free_rx_mpwqe (struct mlx5e_rq*,struct mlx5e_mpw_info*,int) ;
 int mlx5e_skb_from_cqe_mpwrq_linear ;
 int mlx5e_skb_from_cqe_mpwrq_nonlinear ;
 size_t mpwrq_get_cqe_byte_cnt (struct mlx5_cqe64*) ;
 size_t mpwrq_get_cqe_consumed_strides (struct mlx5_cqe64*) ;
 size_t mpwrq_get_cqe_stride_index (struct mlx5_cqe64*) ;
 int mpwrq_is_filler_cqe (struct mlx5_cqe64*) ;
 int napi_gro_receive (int ,struct sk_buff*) ;
 int trigger_report (struct mlx5e_rq*,struct mlx5_cqe64*) ;
 scalar_t__ unlikely (int ) ;

void mlx5e_handle_rx_cqe_mpwrq(struct mlx5e_rq *rq, struct mlx5_cqe64 *cqe)
{
 u16 cstrides = mpwrq_get_cqe_consumed_strides(cqe);
 u16 wqe_id = be16_to_cpu(cqe->wqe_id);
 struct mlx5e_mpw_info *wi = &rq->mpwqe.info[wqe_id];
 u16 stride_ix = mpwrq_get_cqe_stride_index(cqe);
 u32 wqe_offset = stride_ix << rq->mpwqe.log_stride_sz;
 u32 head_offset = wqe_offset & (PAGE_SIZE - 1);
 u32 page_idx = wqe_offset >> PAGE_SHIFT;
 struct mlx5e_rx_wqe_ll *wqe;
 struct mlx5_wq_ll *wq;
 struct sk_buff *skb;
 u16 cqe_bcnt;

 wi->consumed_strides += cstrides;

 if (unlikely(MLX5E_RX_ERR_CQE(cqe))) {
  trigger_report(rq, cqe);
  rq->stats->wqe_err++;
  goto mpwrq_cqe_out;
 }

 if (unlikely(mpwrq_is_filler_cqe(cqe))) {
  struct mlx5e_rq_stats *stats = rq->stats;

  stats->mpwqe_filler_cqes++;
  stats->mpwqe_filler_strides += cstrides;
  goto mpwrq_cqe_out;
 }

 cqe_bcnt = mpwrq_get_cqe_byte_cnt(cqe);

 skb = INDIRECT_CALL_2(rq->mpwqe.skb_from_cqe_mpwrq,
         mlx5e_skb_from_cqe_mpwrq_linear,
         mlx5e_skb_from_cqe_mpwrq_nonlinear,
         rq, wi, cqe_bcnt, head_offset, page_idx);
 if (!skb)
  goto mpwrq_cqe_out;

 mlx5e_complete_rx_cqe(rq, cqe, cqe_bcnt, skb);
 napi_gro_receive(rq->cq.napi, skb);

mpwrq_cqe_out:
 if (likely(wi->consumed_strides < rq->mpwqe.num_strides))
  return;

 wq = &rq->mpwqe.wq;
 wqe = mlx5_wq_ll_get_wqe(wq, wqe_id);
 mlx5e_free_rx_mpwqe(rq, wi, 1);
 mlx5_wq_ll_pop(wq, cqe->wqe_id, &wqe->next.next_wqe_index);
}
