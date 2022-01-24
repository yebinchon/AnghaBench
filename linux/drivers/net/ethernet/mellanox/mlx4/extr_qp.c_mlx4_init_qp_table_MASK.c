#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mlx4_qp_table {int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {int dmfs_high_rate_qpn_base; int dmfs_high_rate_qpn_range; scalar_t__* reserved_qps_cnt; int num_qps; int* reserved_qps_base; int num_ports; TYPE_4__* spec_qps; } ;
struct TYPE_6__ {scalar_t__ base_sqpn; scalar_t__ base_proxy_sqpn; scalar_t__ base_tunnel_sqpn; } ;
struct mlx4_dev {TYPE_2__ caps; TYPE_1__ phys_caps; int /*<<< orphan*/  qp_table_tree; } ;
struct TYPE_9__ {scalar_t__ qp1_proxy; scalar_t__ qp1_tunnel; scalar_t__ qp0_proxy; scalar_t__ qp0_tunnel; } ;
struct TYPE_8__ {struct mlx4_qp_table qp_table; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ MLX4_MAX_PORTS ; 
 int MLX4_MFUNC_MAX ; 
 int MLX4_NUM_QP_REGION ; 
 int MLX4_QP_REGION_BOTTOM ; 
 TYPE_4__* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (struct mlx4_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*) ; 
 int FUNC6 (struct mlx4_dev*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*,char*) ; 
 scalar_t__ FUNC8 (struct mlx4_dev*) ; 
 scalar_t__ FUNC9 (struct mlx4_dev*) ; 
 int FUNC10 (struct mlx4_dev*) ; 
 int FUNC11 (struct mlx4_dev*) ; 
 TYPE_3__* FUNC12 (struct mlx4_dev*) ; 
 int FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 

int FUNC16(struct mlx4_dev *dev)
{
	struct mlx4_qp_table *qp_table = &FUNC12(dev)->qp_table;
	int err;
	int reserved_from_top = 0;
	int reserved_from_bot;
	int k;
	int fixed_reserved_from_bot_rv = 0;
	int bottom_reserved_for_rss_bitmap;
	u32 max_table_offset = dev->caps.dmfs_high_rate_qpn_base +
			dev->caps.dmfs_high_rate_qpn_range;

	FUNC14(&qp_table->lock);
	FUNC1(&dev->qp_table_tree, GFP_ATOMIC);
	if (FUNC9(dev))
		return 0;

	/* We reserve 2 extra QPs per port for the special QPs.  The
	 * block of special QPs must be aligned to a multiple of 8, so
	 * round up.
	 *
	 * We also reserve the MSB of the 24-bit QP number to indicate
	 * that a QP is an XRC QP.
	 */
	for (k = 0; k <= MLX4_QP_REGION_BOTTOM; k++)
		fixed_reserved_from_bot_rv += dev->caps.reserved_qps_cnt[k];

	if (fixed_reserved_from_bot_rv < max_table_offset)
		fixed_reserved_from_bot_rv = max_table_offset;

	/* We reserve at least 1 extra for bitmaps that we don't have enough space for*/
	bottom_reserved_for_rss_bitmap =
		FUNC13(fixed_reserved_from_bot_rv + 1);
	dev->phys_caps.base_sqpn = FUNC0(bottom_reserved_for_rss_bitmap, 8);

	{
		int sort[MLX4_NUM_QP_REGION];
		int i, j;
		int last_base = dev->caps.num_qps;

		for (i = 1; i < MLX4_NUM_QP_REGION; ++i)
			sort[i] = i;

		for (i = MLX4_NUM_QP_REGION; i > MLX4_QP_REGION_BOTTOM; --i) {
			for (j = MLX4_QP_REGION_BOTTOM + 2; j < i; ++j) {
				if (dev->caps.reserved_qps_cnt[sort[j]] >
				    dev->caps.reserved_qps_cnt[sort[j - 1]])
					FUNC15(sort[j], sort[j - 1]);
			}
		}

		for (i = MLX4_QP_REGION_BOTTOM + 1; i < MLX4_NUM_QP_REGION; ++i) {
			last_base -= dev->caps.reserved_qps_cnt[sort[i]];
			dev->caps.reserved_qps_base[sort[i]] = last_base;
			reserved_from_top +=
				dev->caps.reserved_qps_cnt[sort[i]];
		}
	}

       /* Reserve 8 real SQPs in both native and SRIOV modes.
	* In addition, in SRIOV mode, reserve 8 proxy SQPs per function
	* (for all PFs and VFs), and 8 corresponding tunnel QPs.
	* Each proxy SQP works opposite its own tunnel QP.
	*
	* The QPs are arranged as follows:
	* a. 8 real SQPs
	* b. All the proxy SQPs (8 per function)
	* c. All the tunnel QPs (8 per function)
	*/
	reserved_from_bot = FUNC11(dev);
	if (reserved_from_bot + reserved_from_top > dev->caps.num_qps) {
		FUNC7(dev, "Number of reserved QPs is higher than number of QPs\n");
		return -EINVAL;
	}

	err = FUNC6(dev, reserved_from_bot, reserved_from_bot,
				bottom_reserved_for_rss_bitmap,
				fixed_reserved_from_bot_rv,
				max_table_offset);

	if (err)
		return err;

	if (FUNC8(dev)) {
		/* for PPF use */
		dev->phys_caps.base_proxy_sqpn = dev->phys_caps.base_sqpn + 8;
		dev->phys_caps.base_tunnel_sqpn = dev->phys_caps.base_sqpn + 8 + 8 * MLX4_MFUNC_MAX;

		/* In mfunc, calculate proxy and tunnel qp offsets for the PF here,
		 * since the PF does not call mlx4_slave_caps */
		dev->caps.spec_qps = FUNC2(dev->caps.num_ports,
					     sizeof(*dev->caps.spec_qps),
					     GFP_KERNEL);
		if (!dev->caps.spec_qps) {
			err = -ENOMEM;
			goto err_mem;
		}

		for (k = 0; k < dev->caps.num_ports; k++) {
			dev->caps.spec_qps[k].qp0_proxy = dev->phys_caps.base_proxy_sqpn +
				8 * FUNC10(dev) + k;
			dev->caps.spec_qps[k].qp0_tunnel = dev->caps.spec_qps[k].qp0_proxy + 8 * MLX4_MFUNC_MAX;
			dev->caps.spec_qps[k].qp1_proxy = dev->phys_caps.base_proxy_sqpn +
				8 * FUNC10(dev) + MLX4_MAX_PORTS + k;
			dev->caps.spec_qps[k].qp1_tunnel = dev->caps.spec_qps[k].qp1_proxy + 8 * MLX4_MFUNC_MAX;
		}
	}


	err = FUNC4(dev, dev->phys_caps.base_sqpn);
	if (err)
		goto err_mem;

	return err;

err_mem:
	FUNC3(dev->caps.spec_qps);
	dev->caps.spec_qps = NULL;
	FUNC5(dev);
	return err;
}