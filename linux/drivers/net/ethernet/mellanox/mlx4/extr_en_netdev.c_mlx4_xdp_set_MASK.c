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
struct net_device {int /*<<< orphan*/  mtu; } ;
struct mlx4_en_priv {int rx_ring_num; int* tx_ring_num; int /*<<< orphan*/  watchdog_task; int /*<<< orphan*/  port; TYPE_1__** rx_ring; scalar_t__ port_up; TYPE_2__* prof; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_port_profile {int* tx_ring_num; } ;
struct mlx4_en_dev {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  workqueue; } ;
struct bpf_prog {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  num_up; } ;
struct TYPE_3__ {int /*<<< orphan*/  xdp_prog; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct bpf_prog*) ; 
 int MAX_TX_RINGS ; 
 int FUNC2 (struct bpf_prog*) ; 
 size_t TX ; 
 size_t TX_XDP ; 
 struct bpf_prog* FUNC3 (struct bpf_prog*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC5 (struct bpf_prog*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_en_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_en_priv*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_en_priv*) ; 
 struct mlx4_en_priv* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx4_en_port_profile*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx4_en_priv*,struct mlx4_en_priv*) ; 
 int FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,int) ; 
 int FUNC16 (struct mlx4_en_priv*,struct mlx4_en_priv*,struct mlx4_en_port_profile*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 struct mlx4_en_priv* FUNC19 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,struct bpf_prog*) ; 
 struct bpf_prog* FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC24(struct net_device *dev, struct bpf_prog *prog)
{
	struct mlx4_en_priv *priv = FUNC19(dev);
	struct mlx4_en_dev *mdev = priv->mdev;
	struct mlx4_en_port_profile new_prof;
	struct bpf_prog *old_prog;
	struct mlx4_en_priv *tmp;
	int tx_changed = 0;
	int xdp_ring_num;
	int port_up = 0;
	int err;
	int i;

	xdp_ring_num = prog ? priv->rx_ring_num : 0;

	/* No need to reconfigure buffers when simply swapping the
	 * program for a new one.
	 */
	if (priv->tx_ring_num[TX_XDP] == xdp_ring_num) {
		if (prog) {
			prog = FUNC3(prog, priv->rx_ring_num - 1);
			if (FUNC1(prog))
				return FUNC2(prog);
		}
		FUNC17(&mdev->state_lock);
		for (i = 0; i < priv->rx_ring_num; i++) {
			old_prog = FUNC23(
					priv->rx_ring[i]->xdp_prog,
					FUNC10(&mdev->state_lock));
			FUNC22(priv->rx_ring[i]->xdp_prog, prog);
			if (old_prog)
				FUNC4(old_prog);
		}
		FUNC18(&mdev->state_lock);
		return 0;
	}

	if (!FUNC12(dev, dev->mtu))
		return -EOPNOTSUPP;

	tmp = FUNC9(sizeof(*tmp), GFP_KERNEL);
	if (!tmp)
		return -ENOMEM;

	if (prog) {
		prog = FUNC3(prog, priv->rx_ring_num - 1);
		if (FUNC1(prog)) {
			err = FUNC2(prog);
			goto out;
		}
	}

	FUNC17(&mdev->state_lock);
	FUNC11(&new_prof, priv->prof, sizeof(struct mlx4_en_port_profile));
	new_prof.tx_ring_num[TX_XDP] = xdp_ring_num;

	if (priv->tx_ring_num[TX] + xdp_ring_num > MAX_TX_RINGS) {
		tx_changed = 1;
		new_prof.tx_ring_num[TX] =
			MAX_TX_RINGS - FUNC0(xdp_ring_num, priv->prof->num_up);
		FUNC7(priv, "Reducing the number of TX rings, to not exceed the max total rings number.\n");
	}

	err = FUNC16(priv, tmp, &new_prof, false);
	if (err) {
		if (prog)
			FUNC5(prog, priv->rx_ring_num - 1);
		goto unlock_out;
	}

	if (priv->port_up) {
		port_up = 1;
		FUNC15(dev, 1);
	}

	FUNC13(priv, tmp);
	if (tx_changed)
		FUNC20(dev, priv->tx_ring_num[TX]);

	for (i = 0; i < priv->rx_ring_num; i++) {
		old_prog = FUNC23(
					priv->rx_ring[i]->xdp_prog,
					FUNC10(&mdev->state_lock));
		FUNC22(priv->rx_ring[i]->xdp_prog, prog);
		if (old_prog)
			FUNC4(old_prog);
	}

	if (port_up) {
		err = FUNC14(dev);
		if (err) {
			FUNC6(priv, "Failed starting port %d for XDP change\n",
			       priv->port);
			FUNC21(mdev->workqueue, &priv->watchdog_task);
		}
	}

unlock_out:
	FUNC18(&mdev->state_lock);
out:
	FUNC8(tmp);
	return err;
}