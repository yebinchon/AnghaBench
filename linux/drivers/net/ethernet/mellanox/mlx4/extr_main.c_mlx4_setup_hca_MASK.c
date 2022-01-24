#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ pfn; } ;
struct TYPE_12__ {TYPE_3__* slave_state; } ;
struct TYPE_13__ {TYPE_4__ master; } ;
struct TYPE_10__ {TYPE_1__* eq; } ;
struct mlx4_priv {TYPE_7__ driver_uar; int /*<<< orphan*/  kar; TYPE_5__ mfunc; TYPE_2__ eq_table; } ;
struct TYPE_14__ {int num_ports; int* pkey_table_len; int /*<<< orphan*/ * port_ib_mtu; void** ib_port_def_cap; } ;
struct mlx4_dev {int flags; int num_slaves; TYPE_6__ caps; } ;
typedef  int phys_addr_t ;
typedef  void* __be32 ;
struct TYPE_11__ {void** ib_cap_mask; } ;
struct TYPE_9__ {int irq; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IB_MTU_2048 ; 
 int /*<<< orphan*/  IB_MTU_4096 ; 
 size_t MLX4_EQ_ASYNC ; 
 int MLX4_FLAG_MSI_X ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mlx4_dev*) ; 
 int FUNC3 (struct mlx4_dev*,int,int) ; 
 int FUNC4 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct mlx4_dev*) ; 
 int FUNC16 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct mlx4_dev*) ; 
 int FUNC18 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct mlx4_dev*,char*) ; 
 int /*<<< orphan*/  FUNC20 (struct mlx4_dev*,char*,...) ; 
 int FUNC21 (struct mlx4_dev*,int,void**) ; 
 int FUNC22 (struct mlx4_dev*) ; 
 int FUNC23 (struct mlx4_dev*) ; 
 int FUNC24 (struct mlx4_dev*) ; 
 int FUNC25 (struct mlx4_dev*) ; 
 int FUNC26 (struct mlx4_dev*) ; 
 int FUNC27 (struct mlx4_dev*) ; 
 int FUNC28 (struct mlx4_dev*) ; 
 int FUNC29 (struct mlx4_dev*) ; 
 int FUNC30 (struct mlx4_dev*) ; 
 int FUNC31 (struct mlx4_dev*) ; 
 scalar_t__ FUNC32 (struct mlx4_dev*) ; 
 scalar_t__ FUNC33 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC34 (struct mlx4_dev*) ; 
 int FUNC35 (struct mlx4_dev*) ; 
 struct mlx4_priv* FUNC36 (struct mlx4_dev*) ; 
 int FUNC37 (struct mlx4_dev*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC38 (struct mlx4_dev*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC39 (struct mlx4_dev*,char*,...) ; 

__attribute__((used)) static int FUNC40(struct mlx4_dev *dev)
{
	struct mlx4_priv *priv = FUNC36(dev);
	int err;
	int port;
	__be32 ib_port_default_caps;

	err = FUNC30(dev);
	if (err) {
		FUNC20(dev, "Failed to initialize user access region table, aborting\n");
		return err;
	}

	err = FUNC37(dev, &priv->driver_uar);
	if (err) {
		FUNC20(dev, "Failed to allocate driver access region, aborting\n");
		goto err_uar_table_free;
	}

	priv->kar = FUNC0((phys_addr_t) priv->driver_uar.pfn << PAGE_SHIFT, PAGE_SIZE);
	if (!priv->kar) {
		FUNC20(dev, "Couldn't map kernel access region, aborting\n");
		err = -ENOMEM;
		goto err_uar_free;
	}

	err = FUNC27(dev);
	if (err) {
		FUNC20(dev, "Failed to initialize protection domain table, aborting\n");
		goto err_kar_unmap;
	}

	err = FUNC31(dev);
	if (err) {
		FUNC20(dev, "Failed to initialize reliable connection domain table, aborting\n");
		goto err_pd_table_free;
	}

	err = FUNC26(dev);
	if (err) {
		FUNC20(dev, "Failed to initialize memory region table, aborting\n");
		goto err_xrcd_table_free;
	}

	if (!FUNC34(dev)) {
		err = FUNC25(dev);
		if (err) {
			FUNC20(dev, "Failed to initialize multicast group table, aborting\n");
			goto err_mr_table_free;
		}
		err = FUNC18(dev);
		if (err) {
			FUNC20(dev, "Failed in config_mad_demux, aborting\n");
			goto err_mcg_table_free;
		}
	}

	err = FUNC24(dev);
	if (err) {
		FUNC20(dev, "Failed to initialize event queue table, aborting\n");
		goto err_mcg_table_free;
	}

	err = FUNC16(dev);
	if (err) {
		FUNC20(dev, "Failed to switch to event-driven firmware commands, aborting\n");
		goto err_eq_table_free;
	}

	err = FUNC2(dev);
	if (err) {
		if (dev->flags & MLX4_FLAG_MSI_X) {
			FUNC39(dev, "NOP command failed to generate MSI-X interrupt IRQ %d)\n",
				  priv->eq_table.eq[MLX4_EQ_ASYNC].irq);
			FUNC39(dev, "Trying again without MSI-X\n");
		} else {
			FUNC20(dev, "NOP command failed to generate interrupt (IRQ %d), aborting\n",
				 priv->eq_table.eq[MLX4_EQ_ASYNC].irq);
			FUNC20(dev, "BIOS or ACPI interrupt routing problem?\n");
		}

		goto err_cmd_poll;
	}

	FUNC19(dev, "NOP command IRQ test passed\n");

	err = FUNC23(dev);
	if (err) {
		FUNC20(dev, "Failed to initialize completion queue table, aborting\n");
		goto err_cmd_poll;
	}

	err = FUNC29(dev);
	if (err) {
		FUNC20(dev, "Failed to initialize shared receive queue table, aborting\n");
		goto err_cq_table_free;
	}

	err = FUNC28(dev);
	if (err) {
		FUNC20(dev, "Failed to initialize queue pair table, aborting\n");
		goto err_srq_table_free;
	}

	if (!FUNC34(dev)) {
		err = FUNC22(dev);
		if (err && err != -ENOENT) {
			FUNC20(dev, "Failed to initialize counters table, aborting\n");
			goto err_qp_table_free;
		}
	}

	err = FUNC4(dev);
	if (err) {
		FUNC20(dev, "Failed to allocate default counters, aborting\n");
		goto err_counters_table_free;
	}

	if (!FUNC34(dev)) {
		for (port = 1; port <= dev->caps.num_ports; port++) {
			ib_port_default_caps = 0;
			err = FUNC21(dev, port,
						    &ib_port_default_caps);
			if (err)
				FUNC39(dev, "failed to get port %d default ib capabilities (%d). Continuing with caps = 0\n",
					  port, err);
			dev->caps.ib_port_def_cap[port] = ib_port_default_caps;

			/* initialize per-slave default ib port capabilities */
			if (FUNC32(dev)) {
				int i;
				for (i = 0; i < dev->num_slaves; i++) {
					if (i == FUNC35(dev))
						continue;
					priv->mfunc.master.slave_state[i].ib_cap_mask[port] =
						ib_port_default_caps;
				}
			}

			if (FUNC33(dev))
				dev->caps.port_ib_mtu[port] = IB_MTU_2048;
			else
				dev->caps.port_ib_mtu[port] = IB_MTU_4096;

			err = FUNC3(dev, port, FUNC32(dev) ?
					    dev->caps.pkey_table_len[port] : -1);
			if (err) {
				FUNC20(dev, "Failed to set port %d, aborting\n",
					 port);
				goto err_default_countes_free;
			}
		}
	}

	return 0;

err_default_countes_free:
	FUNC7(dev);

err_counters_table_free:
	if (!FUNC34(dev))
		FUNC5(dev);

err_qp_table_free:
	FUNC12(dev);

err_srq_table_free:
	FUNC13(dev);

err_cq_table_free:
	FUNC6(dev);

err_cmd_poll:
	FUNC17(dev);

err_eq_table_free:
	FUNC8(dev);

err_mcg_table_free:
	if (!FUNC34(dev))
		FUNC9(dev);

err_mr_table_free:
	FUNC10(dev);

err_xrcd_table_free:
	FUNC15(dev);

err_pd_table_free:
	FUNC11(dev);

err_kar_unmap:
	FUNC1(priv->kar);

err_uar_free:
	FUNC38(dev, &priv->driver_uar);

err_uar_table_free:
	FUNC14(dev);
	return err;
}