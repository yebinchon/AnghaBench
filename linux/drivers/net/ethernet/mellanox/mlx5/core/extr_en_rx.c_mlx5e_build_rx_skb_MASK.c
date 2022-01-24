#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int mark; int /*<<< orphan*/  protocol; int /*<<< orphan*/  mac_len; } ;
struct net_device {int features; } ;
struct mlx5e_rq_stats {int /*<<< orphan*/  removed_vlan_packets; int /*<<< orphan*/  lro_bytes; int /*<<< orphan*/  lro_packets; int /*<<< orphan*/  packets; } ;
struct mlx5e_rq {int /*<<< orphan*/  ix; int /*<<< orphan*/  clock; int /*<<< orphan*/  tstamp; struct net_device* netdev; struct mlx5e_rq_stats* stats; } ;
struct mlx5_cqe64 {int ml_path; int /*<<< orphan*/  sop_drop_qpn; int /*<<< orphan*/  vlan_info; int /*<<< orphan*/  srqn; } ;
struct TYPE_4__ {int /*<<< orphan*/  hwtstamp; } ;
struct TYPE_3__ {int /*<<< orphan*/  gso_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int MLX5E_CE_BIT_MASK ; 
 int MLX5E_TC_FLOW_ID_MASK ; 
 int NETIF_F_RXHASH ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct mlx5_cqe64*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_cqe64*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5e_rq*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,struct mlx5_cqe64*,struct mlx5e_rq*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,struct mlx5_cqe64*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mlx5_cqe64*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC18 (struct sk_buff*) ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static inline void FUNC20(struct mlx5_cqe64 *cqe,
				      u32 cqe_bcnt,
				      struct mlx5e_rq *rq,
				      struct sk_buff *skb)
{
	u8 lro_num_seg = FUNC3(cqe->srqn) >> 24;
	struct mlx5e_rq_stats *stats = rq->stats;
	struct net_device *netdev = rq->netdev;

	skb->mac_len = ETH_HLEN;

#ifdef CONFIG_MLX5_EN_TLS
	mlx5e_tls_handle_rx_skb(netdev, skb, &cqe_bcnt);
#endif

	if (lro_num_seg > 1) {
		FUNC12(skb, cqe, cqe_bcnt);
		FUNC18(skb)->gso_size = FUNC0(cqe_bcnt, lro_num_seg);
		/* Subtract one since we already counted this as one
		 * "regular" packet in mlx5e_complete_rx_cqe()
		 */
		stats->packets += lro_num_seg - 1;
		stats->lro_packets++;
		stats->lro_bytes += cqe_bcnt;
	}

	if (FUNC19(FUNC13(rq->tstamp)))
		FUNC16(skb)->hwtstamp =
				FUNC9(rq->clock, FUNC6(cqe));

	FUNC17(skb, rq->ix);

	if (FUNC8(netdev->features & NETIF_F_RXHASH))
		FUNC14(cqe, skb);

	if (FUNC4(cqe)) {
		FUNC1(skb, FUNC7(ETH_P_8021Q),
				       FUNC2(cqe->vlan_info));
		stats->removed_vlan_packets++;
	}

	skb->mark = FUNC3(cqe->sop_drop_qpn) & MLX5E_TC_FLOW_ID_MASK;

	FUNC11(netdev, cqe, rq, skb, !!lro_num_seg);
	/* checking CE bit in cqe - MSB in ml_path field */
	if (FUNC19(cqe->ml_path & MLX5E_CE_BIT_MASK))
		FUNC10(rq, skb);

	skb->protocol = FUNC5(skb, netdev);
}