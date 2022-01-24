#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct mlx4_profile {int /*<<< orphan*/  num_mcg; } ;
struct TYPE_4__ {int /*<<< orphan*/  inta_pin; } ;
struct mlx4_priv {TYPE_1__ eq_table; } ;
struct mlx4_init_hca_param {int log_uar_sz; int flags2; int /*<<< orphan*/  hca_core_clock; int /*<<< orphan*/  reserved_uars; int /*<<< orphan*/  reserved_eqs; int /*<<< orphan*/  max_eqs; scalar_t__ mw_enabled; void* uar_page_sz; } ;
struct mlx4_dev_cap {int log_uar_sz; int flags2; int /*<<< orphan*/  hca_core_clock; int /*<<< orphan*/  reserved_uars; int /*<<< orphan*/  reserved_eqs; int /*<<< orphan*/  max_eqs; scalar_t__ mw_enabled; void* uar_page_sz; } ;
struct TYPE_6__ {scalar_t__ dmfs_high_steer_mode; scalar_t__ steering_mode; int max_fmr_maps; int flags; int bmme_flags; int flags2; int /*<<< orphan*/ * rx_checksum_flags_port; int /*<<< orphan*/  dmfs_high_rate_qpn_range; int /*<<< orphan*/ * reserved_qps_cnt; int /*<<< orphan*/  dmfs_high_rate_qpn_base; int /*<<< orphan*/  hca_core_clock; int /*<<< orphan*/  reserved_uars; int /*<<< orphan*/  reserved_eqs; int /*<<< orphan*/  num_eqs; int /*<<< orphan*/  num_uars; int /*<<< orphan*/  num_mpts; int /*<<< orphan*/  function_caps; } ;
struct mlx4_dev {int /*<<< orphan*/  board_id; TYPE_3__ caps; TYPE_2__* persist; } ;
struct mlx4_config_dev_params {int /*<<< orphan*/  rx_csum_flags_port_2; int /*<<< orphan*/  rx_csum_flags_port_1; } ;
struct mlx4_adapter {int /*<<< orphan*/  board_id; int /*<<< orphan*/  inta_pin; } ;
struct TYPE_5__ {int /*<<< orphan*/  num_vfs; } ;

/* Variables and functions */
 void* DEFAULT_UAR_PAGE_SHIFT ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ INIT_HCA_TPT_MW_ENABLE ; 
 int /*<<< orphan*/  MLX4_A0_STEERING_TABLE_SIZE ; 
 int MLX4_BMME_FLAG_TYPE_2_WIN ; 
 int MLX4_DEV_CAP_FLAG2_SYS_EQS ; 
 int MLX4_DEV_CAP_FLAG2_TS ; 
 int MLX4_DEV_CAP_FLAG_MEM_WINDOW ; 
 int /*<<< orphan*/  MLX4_FS_NUM_MCG ; 
 int /*<<< orphan*/  MLX4_FUNC_CAP_DMFS_A0_STATIC ; 
 size_t MLX4_QP_REGION_FW ; 
 int MLX4_QUERY_FUNC_NUM_SYS_EQS ; 
 scalar_t__ MLX4_STEERING_DMFS_A0_DISABLE ; 
 scalar_t__ MLX4_STEERING_DMFS_A0_NOT_SUPPORTED ; 
 scalar_t__ MLX4_STEERING_DMFS_A0_STATIC ; 
 scalar_t__ MLX4_STEERING_MODE_DEVICE_MANAGED ; 
 void* PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,struct mlx4_init_hca_param*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*,struct mlx4_init_hca_param*) ; 
 struct mlx4_profile default_profile ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ enable_4k_uar ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_init_hca_param*) ; 
 struct mlx4_init_hca_param* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct mlx4_profile low_mem_profile ; 
 scalar_t__ FUNC6 (struct mlx4_dev*) ; 
 scalar_t__ FUNC7 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx4_dev*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct mlx4_dev*,struct mlx4_init_hca_param*) ; 
 int FUNC11 (struct mlx4_dev*,struct mlx4_adapter*) ; 
 int FUNC12 (struct mlx4_dev*,struct mlx4_init_hca_param*) ; 
 int FUNC13 (struct mlx4_dev*,struct mlx4_config_dev_params*) ; 
 int /*<<< orphan*/  FUNC14 (struct mlx4_dev*,char*) ; 
 int FUNC15 (struct mlx4_dev*,struct mlx4_init_hca_param*) ; 
 int /*<<< orphan*/  FUNC16 (struct mlx4_dev*,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct mlx4_dev*) ; 
 int FUNC18 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct mlx4_dev*,char*,...) ; 
 int FUNC20 (struct mlx4_dev*,struct mlx4_init_hca_param*,struct mlx4_init_hca_param*,int) ; 
 int FUNC21 (struct mlx4_dev*) ; 
 scalar_t__ FUNC22 (struct mlx4_dev*) ; 
 scalar_t__ FUNC23 (struct mlx4_dev*) ; 
 scalar_t__ FUNC24 () ; 
 int FUNC25 (struct mlx4_dev*,struct mlx4_profile*,struct mlx4_init_hca_param*,struct mlx4_init_hca_param*) ; 
 int /*<<< orphan*/  FUNC26 (struct mlx4_dev*) ; 
 struct mlx4_priv* FUNC27 (struct mlx4_dev*) ; 
 int FUNC28 (struct mlx4_dev*,struct mlx4_init_hca_param*) ; 
 int /*<<< orphan*/  FUNC29 (struct mlx4_dev*) ; 
 int FUNC30 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC31 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC32 (struct mlx4_dev*) ; 
 scalar_t__ FUNC33 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC34 (struct mlx4_dev*,char*) ; 
 int /*<<< orphan*/  FUNC35 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC36 (struct mlx4_dev*) ; 

__attribute__((used)) static int FUNC37(struct mlx4_dev *dev)
{
	struct mlx4_priv	  *priv = FUNC27(dev);
	struct mlx4_init_hca_param *init_hca = NULL;
	struct mlx4_dev_cap	  *dev_cap = NULL;
	struct mlx4_adapter	   adapter;
	struct mlx4_profile	   profile;
	u64 icm_size;
	struct mlx4_config_dev_params params;
	int err;

	if (!FUNC23(dev)) {
		dev_cap = FUNC5(sizeof(*dev_cap), GFP_KERNEL);
		init_hca = FUNC5(sizeof(*init_hca), GFP_KERNEL);

		if (!dev_cap || !init_hca) {
			err = -ENOMEM;
			goto out_free;
		}

		err = FUNC15(dev, dev_cap);
		if (err) {
			FUNC16(dev, "QUERY_DEV_CAP command failed, aborting\n");
			goto out_free;
		}

		FUNC0(dev, dev_cap);
		FUNC1(dev, dev_cap);

		if (dev->caps.dmfs_high_steer_mode == MLX4_STEERING_DMFS_A0_STATIC &&
		    FUNC22(dev))
			dev->caps.function_caps |= MLX4_FUNC_CAP_DMFS_A0_STATIC;

		err = FUNC18(dev);
		if (err)
			FUNC16(dev, "Fail to get physical port id\n");

		if (FUNC22(dev))
			FUNC26(dev);

		if (FUNC24()) {
			FUNC19(dev, "Running from within kdump kernel. Using low memory profile\n");
			profile = low_mem_profile;
		} else {
			profile = default_profile;
		}
		if (dev->caps.steering_mode ==
		    MLX4_STEERING_MODE_DEVICE_MANAGED)
			profile.num_mcg = MLX4_FS_NUM_MCG;

		icm_size = FUNC25(dev, &profile, dev_cap,
					     init_hca);
		if ((long long) icm_size < 0) {
			err = icm_size;
			goto out_free;
		}

		dev->caps.max_fmr_maps = (1 << (32 - FUNC3(dev->caps.num_mpts))) - 1;

		if (enable_4k_uar || !dev->persist->num_vfs) {
			init_hca->log_uar_sz = FUNC3(dev->caps.num_uars) +
						    PAGE_SHIFT - DEFAULT_UAR_PAGE_SHIFT;
			init_hca->uar_page_sz = DEFAULT_UAR_PAGE_SHIFT - 12;
		} else {
			init_hca->log_uar_sz = FUNC3(dev->caps.num_uars);
			init_hca->uar_page_sz = PAGE_SHIFT - 12;
		}

		init_hca->mw_enabled = 0;
		if (dev->caps.flags & MLX4_DEV_CAP_FLAG_MEM_WINDOW ||
		    dev->caps.bmme_flags & MLX4_BMME_FLAG_TYPE_2_WIN)
			init_hca->mw_enabled = INIT_HCA_TPT_MW_ENABLE;

		err = FUNC20(dev, dev_cap, init_hca, icm_size);
		if (err)
			goto out_free;

		err = FUNC10(dev, init_hca);
		if (err) {
			FUNC16(dev, "INIT_HCA command failed, aborting\n");
			goto err_free_icm;
		}

		if (dev_cap->flags2 & MLX4_DEV_CAP_FLAG2_SYS_EQS) {
			err = FUNC28(dev, dev_cap);
			if (err < 0) {
				FUNC16(dev, "QUERY_FUNC command failed, aborting.\n");
				goto err_close;
			} else if (err & MLX4_QUERY_FUNC_NUM_SYS_EQS) {
				dev->caps.num_eqs = dev_cap->max_eqs;
				dev->caps.reserved_eqs = dev_cap->reserved_eqs;
				dev->caps.reserved_uars = dev_cap->reserved_uars;
			}
		}

		/*
		 * If TS is supported by FW
		 * read HCA frequency by QUERY_HCA command
		 */
		if (dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_TS) {
			err = FUNC12(dev, init_hca);
			if (err) {
				FUNC16(dev, "QUERY_HCA command failed, disable timestamp\n");
				dev->caps.flags2 &= ~MLX4_DEV_CAP_FLAG2_TS;
			} else {
				dev->caps.hca_core_clock =
					init_hca->hca_core_clock;
			}

			/* In case we got HCA frequency 0 - disable timestamping
			 * to avoid dividing by zero
			 */
			if (!dev->caps.hca_core_clock) {
				dev->caps.flags2 &= ~MLX4_DEV_CAP_FLAG2_TS;
				FUNC16(dev,
					 "HCA frequency is 0 - timestamping is not supported\n");
			} else if (FUNC7(dev)) {
				/*
				 * Map internal clock,
				 * in case of failure disable timestamping
				 */
				dev->caps.flags2 &= ~MLX4_DEV_CAP_FLAG2_TS;
				FUNC16(dev, "Failed to map internal clock. Timestamping is not supported\n");
			}
		}

		if (dev->caps.dmfs_high_steer_mode !=
		    MLX4_STEERING_DMFS_A0_NOT_SUPPORTED) {
			if (FUNC33(dev))
				FUNC34(dev, "Optimized steering validation failed\n");

			if (dev->caps.dmfs_high_steer_mode ==
			    MLX4_STEERING_DMFS_A0_DISABLE) {
				dev->caps.dmfs_high_rate_qpn_base =
					dev->caps.reserved_qps_cnt[MLX4_QP_REGION_FW];
				dev->caps.dmfs_high_rate_qpn_range =
					MLX4_A0_STEERING_TABLE_SIZE;
			}

			FUNC19(dev, "DMFS high rate steer mode is: %s\n",
				  FUNC2(
					dev->caps.dmfs_high_steer_mode));
		}
	} else {
		err = FUNC21(dev);
		if (err) {
			if (err != -EPROBE_DEFER)
				FUNC16(dev, "Failed to initialize slave\n");
			return err;
		}

		err = FUNC30(dev);
		if (err) {
			FUNC16(dev, "Failed to obtain slave caps\n");
			goto err_close;
		}
	}

	if (FUNC6(dev))
		FUNC14(dev, "Failed to map blue flame area\n");

	/*Only the master set the ports, all the rest got it from it.*/
	if (!FUNC23(dev))
		FUNC29(dev);

	err = FUNC11(dev, &adapter);
	if (err) {
		FUNC16(dev, "QUERY_ADAPTER command failed, aborting\n");
		goto unmap_bf;
	}

	/* Query CONFIG_DEV parameters */
	err = FUNC13(dev, &params);
	if (err && err != -EOPNOTSUPP) {
		FUNC16(dev, "Failed to query CONFIG_DEV parameters\n");
	} else if (!err) {
		dev->caps.rx_checksum_flags_port[1] = params.rx_csum_flags_port_1;
		dev->caps.rx_checksum_flags_port[2] = params.rx_csum_flags_port_2;
	}
	priv->eq_table.inta_pin = adapter.inta_pin;
	FUNC8(dev->board_id, adapter.board_id, sizeof(dev->board_id));

	err = 0;
	goto out_free;

unmap_bf:
	FUNC36(dev);
	FUNC35(dev);

	if (FUNC23(dev))
		FUNC31(dev);

err_close:
	if (FUNC23(dev))
		FUNC32(dev);
	else
		FUNC9(dev, 0);

err_free_icm:
	if (!FUNC23(dev))
		FUNC17(dev);

out_free:
	FUNC4(dev_cap);
	FUNC4(init_hca);

	return err;
}