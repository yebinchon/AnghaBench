
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct mlx5e_wqe_frag_info {int dummy; } ;
struct TYPE_6__ {int napi; } ;
struct mlx5_wq_cyc {int dummy; } ;
struct TYPE_5__ {int skb_from_cqe; struct mlx5_wq_cyc wq; } ;
struct mlx5e_rq {TYPE_3__ cq; int flags; TYPE_2__ wqe; TYPE_1__* stats; } ;
struct mlx5_cqe64 {int byte_cnt; int wqe_counter; } ;
struct TYPE_4__ {int wqe_err; } ;


 struct sk_buff* INDIRECT_CALL_2 (int ,int ,int ,struct mlx5e_rq*,struct mlx5_cqe64*,struct mlx5e_wqe_frag_info*,int ) ;
 int MLX5E_RQ_FLAG_XDP_XMIT ;
 int MLX5E_RX_ERR_CQE (struct mlx5_cqe64*) ;
 scalar_t__ __test_and_clear_bit (int ,int ) ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 struct mlx5e_wqe_frag_info* get_frag (struct mlx5e_rq*,int ) ;
 int mlx5_wq_cyc_ctr2ix (struct mlx5_wq_cyc*,int ) ;
 int mlx5_wq_cyc_pop (struct mlx5_wq_cyc*) ;
 int mlx5e_complete_rx_cqe (struct mlx5e_rq*,struct mlx5_cqe64*,int ,struct sk_buff*) ;
 int mlx5e_free_rx_wqe (struct mlx5e_rq*,struct mlx5e_wqe_frag_info*,int) ;
 int mlx5e_skb_from_cqe_linear ;
 int mlx5e_skb_from_cqe_nonlinear ;
 int napi_gro_receive (int ,struct sk_buff*) ;
 int trigger_report (struct mlx5e_rq*,struct mlx5_cqe64*) ;
 scalar_t__ unlikely (int ) ;

void mlx5e_handle_rx_cqe(struct mlx5e_rq *rq, struct mlx5_cqe64 *cqe)
{
 struct mlx5_wq_cyc *wq = &rq->wqe.wq;
 struct mlx5e_wqe_frag_info *wi;
 struct sk_buff *skb;
 u32 cqe_bcnt;
 u16 ci;

 ci = mlx5_wq_cyc_ctr2ix(wq, be16_to_cpu(cqe->wqe_counter));
 wi = get_frag(rq, ci);
 cqe_bcnt = be32_to_cpu(cqe->byte_cnt);

 if (unlikely(MLX5E_RX_ERR_CQE(cqe))) {
  trigger_report(rq, cqe);
  rq->stats->wqe_err++;
  goto free_wqe;
 }

 skb = INDIRECT_CALL_2(rq->wqe.skb_from_cqe,
         mlx5e_skb_from_cqe_linear,
         mlx5e_skb_from_cqe_nonlinear,
         rq, cqe, wi, cqe_bcnt);
 if (!skb) {

  if (__test_and_clear_bit(MLX5E_RQ_FLAG_XDP_XMIT, rq->flags)) {



   goto wq_cyc_pop;
  }
  goto free_wqe;
 }

 mlx5e_complete_rx_cqe(rq, cqe, cqe_bcnt, skb);
 napi_gro_receive(rq->cq.napi, skb);

free_wqe:
 mlx5e_free_rx_wqe(rq, wi, 1);
wq_cyc_pop:
 mlx5_wq_cyc_pop(wq);
}
