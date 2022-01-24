#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct net_device {int /*<<< orphan*/  mtu; } ;
struct mlx4_en_tx_ring {int buf_size; scalar_t__ buf; int /*<<< orphan*/ * recycle_ring; int /*<<< orphan*/  tx_queue; } ;
struct TYPE_16__ {int /*<<< orphan*/  indir_qp; } ;
struct mlx4_en_priv {int port_up; int rx_ring_num; int cqe_factor; size_t port; int num_tx_rings_p_up; int* tx_ring_num; int flags; TYPE_8__** rx_ring; struct mlx4_en_cq** rx_cq; struct mlx4_en_cq*** tx_cq; struct mlx4_en_tx_ring*** tx_ring; struct mlx4_en_dev* mdev; int /*<<< orphan*/  rx_mode_task; int /*<<< orphan*/  broadcast_id; TYPE_3__ rss_map; int /*<<< orphan*/  base_qpn; TYPE_2__* prof; scalar_t__ rx_skb_size; int /*<<< orphan*/  counter_index; int /*<<< orphan*/  cqe_size; int /*<<< orphan*/  max_mtu; int /*<<< orphan*/ * ethtool_rules; int /*<<< orphan*/  ethtool_list; int /*<<< orphan*/  curr_list; int /*<<< orphan*/  mc_list; } ;
struct mlx4_en_dev {TYPE_5__* dev; int /*<<< orphan*/  workqueue; scalar_t__* mac_removed; } ;
struct TYPE_14__ {int /*<<< orphan*/  cqn; } ;
struct mlx4_en_cq {int size; int /*<<< orphan*/  napi; TYPE_1__ mcq; TYPE_7__* buf; } ;
struct mlx4_cqe {int /*<<< orphan*/  owner_sr_opcode; } ;
struct ethtool_flow_id {int dummy; } ;
struct TYPE_20__ {int /*<<< orphan*/  cqn; } ;
struct TYPE_19__ {int /*<<< orphan*/  wqe_index; } ;
struct TYPE_17__ {scalar_t__ tunnel_offload_mode; scalar_t__ steering_mode; } ;
struct TYPE_18__ {TYPE_4__ caps; } ;
struct TYPE_15__ {int /*<<< orphan*/  rx_ppp; int /*<<< orphan*/  rx_pause; int /*<<< orphan*/  tx_ppp; int /*<<< orphan*/  tx_pause; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 scalar_t__ ETH_FCS_LEN ; 
 int /*<<< orphan*/  HW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MAX_NUM_OF_FS_RULES ; 
 int /*<<< orphan*/  MLX4_CQE_OWNER_MASK ; 
 int MLX4_EN_FLAG_MC_PROMISC ; 
 int MLX4_EN_FLAG_PROMISC ; 
 int MLX4_EN_NUM_TX_TYPES ; 
 int /*<<< orphan*/  MLX4_PROT_ETH ; 
 scalar_t__ MLX4_STEERING_MODE_A0 ; 
 scalar_t__ MLX4_TUNNEL_OFFLOAD_MODE_VXLAN ; 
 scalar_t__ STAMP_STRIDE ; 
 int TX ; 
 int TX_XDP ; 
 int /*<<< orphan*/  VXLAN_STEER_BY_OUTER_MAC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_en_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_5__*,size_t) ; 
 int FUNC10 (TYPE_5__*,size_t,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (TYPE_5__*,size_t,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_5__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_5__*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct mlx4_en_priv*,struct mlx4_en_cq*,int) ; 
 int FUNC15 (struct mlx4_en_priv*) ; 
 int FUNC16 (struct mlx4_en_priv*,struct mlx4_en_tx_ring*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct mlx4_en_priv*,struct mlx4_en_cq*) ; 
 int /*<<< orphan*/  FUNC18 (struct net_device*) ; 
 int FUNC19 (struct mlx4_en_priv*) ; 
 int FUNC20 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC21 (struct mlx4_en_priv*,struct mlx4_en_cq*) ; 
 int /*<<< orphan*/  FUNC22 (struct mlx4_en_priv*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC23 (struct mlx4_en_priv*,struct mlx4_en_tx_ring*) ; 
 int /*<<< orphan*/  FUNC24 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC25 (struct mlx4_en_priv*,int) ; 
 struct mlx4_cqe* FUNC26 (TYPE_7__*,int,int /*<<< orphan*/ ) ; 
 int FUNC27 (struct mlx4_en_priv*) ; 
 int FUNC28 (struct mlx4_en_priv*,int) ; 
 int /*<<< orphan*/  FUNC29 (struct mlx4_en_priv*,int) ; 
 int /*<<< orphan*/  FUNC30 (struct mlx4_en_priv*,struct mlx4_en_tx_ring*) ; 
 int /*<<< orphan*/  FUNC31 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC32 (struct mlx4_en_priv*) ; 
 int FUNC33 (struct mlx4_en_priv*,struct mlx4_en_cq*) ; 
 scalar_t__ FUNC34 (struct mlx4_en_priv*) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_5__*,size_t) ; 
 scalar_t__ FUNC36 (TYPE_5__*,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (struct mlx4_en_dev*,char*) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC39 (struct net_device*,int) ; 
 struct mlx4_en_priv* FUNC40 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC41 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC42 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC44 (struct net_device*) ; 

int FUNC45(struct net_device *dev)
{
	struct mlx4_en_priv *priv = FUNC40(dev);
	struct mlx4_en_dev *mdev = priv->mdev;
	struct mlx4_en_cq *cq;
	struct mlx4_en_tx_ring *tx_ring;
	int rx_index = 0;
	int err = 0;
	int i, t;
	int j;
	u8 mc_list[16] = {0};

	if (priv->port_up) {
		FUNC2(DRV, priv, "start port called while port already up\n");
		return 0;
	}

	FUNC0(&priv->mc_list);
	FUNC0(&priv->curr_list);
	FUNC0(&priv->ethtool_list);
	FUNC7(&priv->ethtool_rules[0], 0,
	       sizeof(struct ethtool_flow_id) * MAX_NUM_OF_FS_RULES);

	/* Calculate Rx buf size */
	dev->mtu = FUNC8(dev->mtu, priv->max_mtu);
	FUNC18(dev);
	FUNC2(DRV, priv, "Rx buf size:%d\n", priv->rx_skb_size);

	/* Configure rx cq's and rings */
	err = FUNC15(priv);
	if (err) {
		FUNC3(priv, "Failed to activate RX rings\n");
		return err;
	}
	for (i = 0; i < priv->rx_ring_num; i++) {
		cq = priv->rx_cq[i];

		err = FUNC28(priv, i);
		if (err) {
			FUNC3(priv, "Failed preparing IRQ affinity hint\n");
			goto cq_err;
		}

		err = FUNC14(priv, cq, i);
		if (err) {
			FUNC3(priv, "Failed activating Rx CQ\n");
			FUNC25(priv, i);
			goto cq_err;
		}

		for (j = 0; j < cq->size; j++) {
			struct mlx4_cqe *cqe = NULL;

			cqe = FUNC26(cq->buf, j, priv->cqe_size) +
			      priv->cqe_factor;
			cqe->owner_sr_opcode = MLX4_CQE_OWNER_MASK;
		}

		err = FUNC33(priv, cq);
		if (err) {
			FUNC3(priv, "Failed setting cq moderation parameters\n");
			FUNC21(priv, cq);
			FUNC25(priv, i);
			goto cq_err;
		}
		FUNC17(priv, cq);
		priv->rx_ring[i]->cqn = cq->mcq.cqn;
		++rx_index;
	}

	/* Set qp number */
	FUNC2(DRV, priv, "Getting qp number for port %d\n", priv->port);
	err = FUNC27(priv);
	if (err) {
		FUNC3(priv, "Failed getting eth qp\n");
		goto cq_err;
	}
	mdev->mac_removed[priv->port] = 0;

	priv->counter_index =
			FUNC35(mdev->dev, priv->port);

	err = FUNC19(priv);
	if (err) {
		FUNC3(priv, "Failed configuring rss steering\n");
		goto mac_err;
	}

	err = FUNC20(priv);
	if (err)
		goto rss_err;

	/* Configure tx cq's and rings */
	for (t = 0 ; t < MLX4_EN_NUM_TX_TYPES; t++) {
		u8 num_tx_rings_p_up = t == TX ?
			priv->num_tx_rings_p_up : priv->tx_ring_num[t];

		for (i = 0; i < priv->tx_ring_num[t]; i++) {
			/* Configure cq */
			cq = priv->tx_cq[t][i];
			err = FUNC14(priv, cq, i);
			if (err) {
				FUNC3(priv, "Failed allocating Tx CQ\n");
				goto tx_err;
			}
			err = FUNC33(priv, cq);
			if (err) {
				FUNC3(priv, "Failed setting cq moderation parameters\n");
				FUNC21(priv, cq);
				goto tx_err;
			}
			FUNC2(DRV, priv,
			       "Resetting index of collapsed CQ:%d to -1\n", i);
			cq->buf->wqe_index = FUNC1(0xffff);

			/* Configure ring */
			tx_ring = priv->tx_ring[t][i];
			err = FUNC16(priv, tx_ring,
						       cq->mcq.cqn,
						       i / num_tx_rings_p_up);
			if (err) {
				FUNC3(priv, "Failed allocating Tx ring\n");
				FUNC21(priv, cq);
				goto tx_err;
			}
			if (t != TX_XDP) {
				tx_ring->tx_queue = FUNC39(dev, i);
				tx_ring->recycle_ring = NULL;

				/* Arm CQ for TX completions */
				FUNC17(priv, cq);

			} else {
				FUNC30(priv, tx_ring);
				FUNC29(priv, i);
				/* XDP TX CQ should never be armed */
			}

			/* Set initial ownership of all Tx TXBBs to SW (1) */
			for (j = 0; j < tx_ring->buf_size; j += STAMP_STRIDE)
				*((u32 *)(tx_ring->buf + j)) = 0xffffffff;
		}
	}

	/* Configure port */
	err = FUNC11(mdev->dev, priv->port,
				    priv->rx_skb_size + ETH_FCS_LEN,
				    priv->prof->tx_pause,
				    priv->prof->tx_ppp,
				    priv->prof->rx_pause,
				    priv->prof->rx_ppp);
	if (err) {
		FUNC3(priv, "Failed setting port general configurations for port %d, with error %d\n",
		       priv->port, err);
		goto tx_err;
	}

	err = FUNC13(mdev->dev, priv->port, dev->mtu);
	if (err) {
		FUNC3(priv, "Failed to pass user MTU(%d) to Firmware for port %d, with error %d\n",
		       dev->mtu, priv->port, err);
		goto tx_err;
	}

	/* Set default qp number */
	err = FUNC12(mdev->dev, priv->port, priv->base_qpn, 0);
	if (err) {
		FUNC3(priv, "Failed setting default qp numbers\n");
		goto tx_err;
	}

	if (mdev->dev->caps.tunnel_offload_mode == MLX4_TUNNEL_OFFLOAD_MODE_VXLAN) {
		err = FUNC10(mdev->dev, priv->port, VXLAN_STEER_BY_OUTER_MAC, 1);
		if (err) {
			FUNC3(priv, "Failed setting port L2 tunnel configuration, err %d\n",
			       err);
			goto tx_err;
		}
	}

	/* Init port */
	FUNC2(HW, priv, "Initializing port\n");
	err = FUNC9(mdev->dev, priv->port);
	if (err) {
		FUNC3(priv, "Failed Initializing port\n");
		goto tx_err;
	}

	/* Set Unicast and VXLAN steering rules */
	if (mdev->dev->caps.steering_mode != MLX4_STEERING_MODE_A0 &&
	    FUNC34(priv))
		FUNC37(mdev, "Failed setting steering rules\n");

	/* Attach rx QP to bradcast address */
	FUNC4(&mc_list[10]);
	mc_list[5] = priv->port; /* needed for B0 steering support */
	if (FUNC36(mdev->dev, priv->rss_map.indir_qp, mc_list,
				  priv->port, 0, MLX4_PROT_ETH,
				  &priv->broadcast_id))
		FUNC37(mdev, "Failed Attaching Broadcast\n");

	/* Must redo promiscuous mode setup. */
	priv->flags &= ~(MLX4_EN_FLAG_PROMISC | MLX4_EN_FLAG_MC_PROMISC);

	/* Schedule multicast task to populate multicast list */
	FUNC43(mdev->workqueue, &priv->rx_mode_task);

	if (priv->mdev->dev->caps.tunnel_offload_mode == MLX4_TUNNEL_OFFLOAD_MODE_VXLAN)
		FUNC44(dev);

	priv->port_up = true;

	/* Process all completions if exist to prevent
	 * the queues freezing if they are full
	 */
	for (i = 0; i < priv->rx_ring_num; i++) {
		FUNC5();
		FUNC38(&priv->rx_cq[i]->napi);
		FUNC6();
	}

	FUNC42(dev);
	FUNC41(dev);

	return 0;

tx_err:
	if (t == MLX4_EN_NUM_TX_TYPES) {
		t--;
		i = priv->tx_ring_num[t];
	}
	while (t >= 0) {
		while (i--) {
			FUNC23(priv, priv->tx_ring[t][i]);
			FUNC21(priv, priv->tx_cq[t][i]);
		}
		if (!t--)
			break;
		i = priv->tx_ring_num[t];
	}
	FUNC24(priv);
rss_err:
	FUNC32(priv);
mac_err:
	FUNC31(priv);
cq_err:
	while (rx_index--) {
		FUNC21(priv, priv->rx_cq[rx_index]);
		FUNC25(priv, rx_index);
	}
	for (i = 0; i < priv->rx_ring_num; i++)
		FUNC22(priv, priv->rx_ring[i]);

	return err; /* need to close devices */
}