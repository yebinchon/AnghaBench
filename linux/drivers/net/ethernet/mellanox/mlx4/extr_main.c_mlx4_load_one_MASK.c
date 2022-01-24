#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  revision; } ;
struct TYPE_7__ {int num_ports; int num_comp_vectors; } ;
struct mlx4_dev {int flags; struct mlx4_dev_cap* dev_vfs; TYPE_5__* persist; TYPE_2__ caps; scalar_t__ num_slaves; int /*<<< orphan*/  numa_node; int /*<<< orphan*/  rev_id; } ;
struct TYPE_8__ {int port1; int port2; } ;
struct TYPE_6__ {int /*<<< orphan*/  pool_lock; int /*<<< orphan*/  pool_bm; } ;
struct TYPE_9__ {int /*<<< orphan*/  context_lock; } ;
struct mlx4_priv {struct mlx4_dev dev; int /*<<< orphan*/ * port; scalar_t__ removed; TYPE_3__ v2p; TYPE_1__ msix_ctl; int /*<<< orphan*/  opreq_task; int /*<<< orphan*/  opreq_count; int /*<<< orphan*/  bf_mutex; int /*<<< orphan*/  bf_list; TYPE_4__ cmd; int /*<<< orphan*/  pgdir_mutex; int /*<<< orphan*/  pgdir_list; int /*<<< orphan*/  bond_mutex; int /*<<< orphan*/  port_mutex; int /*<<< orphan*/  ctx_lock; int /*<<< orphan*/  ctx_list; } ;
struct mlx4_dev_cap {int flags2; int min_port; int n_ports; } ;
struct TYPE_10__ {int num_vfs; unsigned int* nvfs; int /*<<< orphan*/  pdev; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int EACCES ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_MSIX ; 
 int /*<<< orphan*/  MLX4_CMD_CLEANUP_ALL ; 
 int /*<<< orphan*/  MLX4_CMD_CLEANUP_VHCR ; 
 int /*<<< orphan*/  MLX4_DEVICE_STATE_UP ; 
 int MLX4_DEV_CAP_FLAG2_SYS_EQS ; 
 int MLX4_FLAG_MASTER ; 
 int MLX4_FLAG_MSI_X ; 
 int MLX4_FLAG_SLAVE ; 
 int MLX4_FLAG_SRIOV ; 
 scalar_t__ MLX4_MAX_NUM_SLAVES ; 
 int MLX4_PCI_DEV_IS_VF ; 
 int /*<<< orphan*/  RES_TR_FREE_STRUCTS_ONLY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev_cap*) ; 
 struct mlx4_dev_cap* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int*,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx4_dev_cap*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct mlx4_dev*) ; 
 int FUNC12 (struct mlx4_dev*,struct mlx4_dev_cap*) ; 
 int FUNC13 (struct mlx4_dev*) ; 
 scalar_t__ FUNC14 (struct mlx4_dev*,struct mlx4_dev_cap*,int*) ; 
 int /*<<< orphan*/  FUNC15 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC18 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC20 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC21 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC24 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC25 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC26 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC27 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC28 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC29 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC30 (struct mlx4_dev*,int /*<<< orphan*/ ) ; 
 int FUNC31 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC32 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC33 (struct mlx4_dev*) ; 
 int FUNC34 (struct mlx4_dev*,struct pci_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC35 (struct mlx4_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC36 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC37 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC38 (struct mlx4_dev*,int /*<<< orphan*/ ) ; 
 int FUNC39 (struct mlx4_dev*) ; 
 int FUNC40 (struct mlx4_dev*) ; 
 int FUNC41 (struct mlx4_dev*) ; 
 int FUNC42 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC43 (struct mlx4_dev*) ; 
 int FUNC44 (struct mlx4_dev*) ; 
 scalar_t__ FUNC45 (struct mlx4_dev*) ; 
 scalar_t__ FUNC46 (struct mlx4_dev*) ; 
 scalar_t__ FUNC47 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC48 (struct mlx4_dev*) ; 
 int FUNC49 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  mlx4_opreq_action ; 
 int FUNC50 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC51 (struct mlx4_dev*) ; 
 int FUNC52 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC53 (struct mlx4_dev*) ; 
 int FUNC54 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC55 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC56 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC57 (struct mlx4_dev*,char*) ; 
 int /*<<< orphan*/  FUNC58 (int /*<<< orphan*/ *) ; 
 int num_vfs_argc ; 
 int /*<<< orphan*/  FUNC59 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC60 (struct pci_dev*) ; 
 int FUNC61 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC62 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pf_loading ; 
 int /*<<< orphan*/  FUNC63 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC64(struct pci_dev *pdev, int pci_dev_data,
			 int total_vfs, int *nvfs, struct mlx4_priv *priv,
			 int reset_flow)
{
	struct mlx4_dev *dev;
	unsigned sum = 0;
	int err;
	int port;
	int i;
	struct mlx4_dev_cap *dev_cap = NULL;
	int existing_vfs = 0;

	dev = &priv->dev;

	FUNC0(&priv->ctx_list);
	FUNC63(&priv->ctx_lock);

	FUNC58(&priv->port_mutex);
	FUNC58(&priv->bond_mutex);

	FUNC0(&priv->pgdir_list);
	FUNC58(&priv->pgdir_mutex);
	FUNC63(&priv->cmd.context_lock);

	FUNC0(&priv->bf_list);
	FUNC58(&priv->bf_mutex);

	dev->rev_id = pdev->revision;
	dev->numa_node = FUNC6(&pdev->dev);

	/* Detect if this device is a virtual function */
	if (pci_dev_data & MLX4_PCI_DEV_IS_VF) {
		FUNC57(dev, "Detected virtual function - running in slave mode\n");
		dev->flags |= MLX4_FLAG_SLAVE;
	} else {
		/* We reset the device and enable SRIOV only for physical
		 * devices.  Try to claim ownership on the device;
		 * if already taken, skip -- do not allow multiple PFs */
		err = FUNC39(dev);
		if (err) {
			if (err < 0)
				return err;
			else {
				FUNC57(dev, "Multiple PFs not yet supported - Skipping PF\n");
				return -EINVAL;
			}
		}

		FUNC4(&priv->opreq_count, 0);
		FUNC1(&priv->opreq_task, mlx4_opreq_action);

		/*
		 * Now reset the HCA before we touch the PCI capabilities or
		 * attempt a firmware command, since a boot ROM may have left
		 * the HCA in an undefined state.
		 */
		err = FUNC52(dev);
		if (err) {
			FUNC35(dev, "Failed to reset HCA, aborting\n");
			goto err_sriov;
		}

		if (total_vfs) {
			dev->flags = MLX4_FLAG_MASTER;
			existing_vfs = FUNC61(pdev);
			if (existing_vfs)
				dev->flags |= MLX4_FLAG_SRIOV;
			dev->persist->num_vfs = total_vfs;
		}
	}

	/* on load remove any previous indication of internal error,
	 * device is up.
	 */
	dev->persist->state = MLX4_DEVICE_STATE_UP;

slave_start:
	err = FUNC31(dev);
	if (err) {
		FUNC35(dev, "Failed to init command interface, aborting\n");
		goto err_sriov;
	}

	/* In slave functions, the communication channel must be initialized
	 * before posting commands. Also, init num_slaves before calling
	 * mlx4_init_hca */
	if (FUNC46(dev)) {
		if (FUNC45(dev)) {
			dev->num_slaves = MLX4_MAX_NUM_SLAVES;

		} else {
			dev->num_slaves = 0;
			err = FUNC49(dev);
			if (err) {
				FUNC35(dev, "Failed to init slave mfunc interface, aborting\n");
				goto err_cmd;
			}
		}
	}

	err = FUNC40(dev);
	if (err) {
		FUNC35(dev, "Failed to init fw, aborting.\n");
		goto err_mfunc;
	}

	if (FUNC45(dev)) {
		/* when we hit the goto slave_start below, dev_cap already initialized */
		if (!dev_cap) {
			dev_cap = FUNC8(sizeof(*dev_cap), GFP_KERNEL);

			if (!dev_cap) {
				err = -ENOMEM;
				goto err_fw;
			}

			err = FUNC12(dev, dev_cap);
			if (err) {
				FUNC35(dev, "QUERY_DEV_CAP command failed, aborting.\n");
				goto err_fw;
			}

			if (FUNC14(dev, dev_cap, nvfs))
				goto err_fw;

			if (!(dev_cap->flags2 & MLX4_DEV_CAP_FLAG2_SYS_EQS)) {
				u64 dev_flags = FUNC34(dev, pdev,
								  total_vfs,
								  existing_vfs,
								  reset_flow);

				FUNC28(dev);
				FUNC30(dev, MLX4_CMD_CLEANUP_ALL);
				dev->flags = dev_flags;
				if (!FUNC2(dev->flags)) {
					FUNC35(dev, "Invalid SRIOV state\n");
					goto err_sriov;
				}
				err = FUNC52(dev);
				if (err) {
					FUNC35(dev, "Failed to reset HCA, aborting.\n");
					goto err_sriov;
				}
				goto slave_start;
			}
		} else {
			/* Legacy mode FW requires SRIOV to be enabled before
			 * doing QUERY_DEV_CAP, since max_eq's value is different if
			 * SRIOV is enabled.
			 */
			FUNC10(dev_cap, 0, sizeof(*dev_cap));
			err = FUNC12(dev, dev_cap);
			if (err) {
				FUNC35(dev, "QUERY_DEV_CAP command failed, aborting.\n");
				goto err_fw;
			}

			if (FUNC14(dev, dev_cap, nvfs))
				goto err_fw;
		}
	}

	err = FUNC41(dev);
	if (err) {
		if (err == -EACCES) {
			/* Not primary Physical function
			 * Running in slave mode */
			FUNC30(dev, MLX4_CMD_CLEANUP_ALL);
			/* We're not a PF */
			if (dev->flags & MLX4_FLAG_SRIOV) {
				if (!existing_vfs)
					FUNC60(pdev);
				if (FUNC45(dev) && !reset_flow)
					FUNC3(&pf_loading);
				dev->flags &= ~MLX4_FLAG_SRIOV;
			}
			if (!FUNC47(dev))
				FUNC37(dev);
			dev->flags |= MLX4_FLAG_SLAVE;
			dev->flags &= ~MLX4_FLAG_MASTER;
			goto slave_start;
		} else
			goto err_fw;
	}

	if (FUNC45(dev) && (dev_cap->flags2 & MLX4_DEV_CAP_FLAG2_SYS_EQS)) {
		u64 dev_flags = FUNC34(dev, pdev, total_vfs,
						  existing_vfs, reset_flow);

		if ((dev->flags ^ dev_flags) & (MLX4_FLAG_MASTER | MLX4_FLAG_SLAVE)) {
			FUNC30(dev, MLX4_CMD_CLEANUP_VHCR);
			dev->flags = dev_flags;
			err = FUNC31(dev);
			if (err) {
				/* Only VHCR is cleaned up, so could still
				 * send FW commands
				 */
				FUNC35(dev, "Failed to init VHCR command interface, aborting\n");
				goto err_close;
			}
		} else {
			dev->flags = dev_flags;
		}

		if (!FUNC2(dev->flags)) {
			FUNC35(dev, "Invalid SRIOV state\n");
			goto err_close;
		}
	}

	/* check if the device is functioning at its maximum possible speed.
	 * No return code for this call, just warn the user in case of PCI
	 * express device capabilities are under-satisfied by the bus.
	 */
	if (!FUNC47(dev))
		FUNC62(dev->persist->pdev);

	/* In master functions, the communication channel must be initialized
	 * after obtaining its address from fw */
	if (FUNC45(dev)) {
		if (dev->caps.num_ports < 2 &&
		    num_vfs_argc > 1) {
			err = -EINVAL;
			FUNC35(dev,
				 "Error: Trying to configure VFs on port 2, but HCA has only %d physical ports\n",
				 dev->caps.num_ports);
			goto err_close;
		}
		FUNC9(dev->persist->nvfs, nvfs, sizeof(dev->persist->nvfs));

		for (i = 0;
		     i < sizeof(dev->persist->nvfs)/
		     sizeof(dev->persist->nvfs[0]); i++) {
			unsigned j;

			for (j = 0; j < dev->persist->nvfs[i]; ++sum, ++j) {
				dev->dev_vfs[sum].min_port = i < 2 ? i + 1 : 1;
				dev->dev_vfs[sum].n_ports = i < 2 ? 1 :
					dev->caps.num_ports;
			}
		}

		/* In master functions, the communication channel
		 * must be initialized after obtaining its address from fw
		 */
		err = FUNC49(dev);
		if (err) {
			FUNC35(dev, "Failed to init master mfunc interface, aborting.\n");
			goto err_close;
		}
	}

	err = FUNC13(dev);
	if (err)
		goto err_master_mfunc;

	FUNC5(priv->msix_ctl.pool_bm, MAX_MSIX);
	FUNC58(&priv->msix_ctl.pool_lock);

	FUNC33(dev);
	if ((FUNC46(dev)) &&
	    !(dev->flags & MLX4_FLAG_MSI_X)) {
		err = -EOPNOTSUPP;
		FUNC35(dev, "INTx is not supported in multi-function mode, aborting\n");
		goto err_free_eq;
	}

	if (!FUNC47(dev)) {
		err = FUNC44(dev);
		if (err)
			goto err_disable_msix;
	}

	FUNC43(dev);

	err = FUNC54(dev);
	if (err == -EBUSY && (dev->flags & MLX4_FLAG_MSI_X) &&
	    !FUNC46(dev)) {
		dev->flags &= ~MLX4_FLAG_MSI_X;
		dev->caps.num_comp_vectors = 1;
		FUNC59(pdev);
		err = FUNC54(dev);
	}

	if (err)
		goto err_steer;

	/* When PF resources are ready arm its comm channel to enable
	 * getting commands
	 */
	if (FUNC45(dev)) {
		err = FUNC11(dev);
		if (err) {
			FUNC35(dev, " Failed to arm comm channel eq: %x\n",
				 err);
			goto err_steer;
		}
	}

	for (port = 1; port <= dev->caps.num_ports; port++) {
		err = FUNC42(dev, port);
		if (err)
			goto err_port;
	}

	priv->v2p.port1 = 1;
	priv->v2p.port2 = 2;

	err = FUNC50(dev);
	if (err)
		goto err_port;

	FUNC51(dev);

	FUNC53(dev);
	FUNC56(dev);

	priv->removed = 0;

	if (FUNC45(dev) && dev->persist->num_vfs && !reset_flow)
		FUNC3(&pf_loading);

	FUNC7(dev_cap);
	return 0;

err_port:
	for (--port; port >= 1; --port)
		FUNC22(&priv->port[port]);

	FUNC17(dev);
	if (!FUNC47(dev))
		FUNC15(dev);
	FUNC23(dev);
	FUNC24(dev);
	FUNC16(dev);
	FUNC32(dev);
	FUNC18(dev);
	FUNC19(dev);
	FUNC20(dev);
	FUNC26(dev);
	FUNC21(dev);
	FUNC25(dev);

err_steer:
	if (!FUNC47(dev))
		FUNC27(dev);

err_disable_msix:
	if (dev->flags & MLX4_FLAG_MSI_X)
		FUNC59(pdev);

err_free_eq:
	FUNC36(dev);

err_master_mfunc:
	if (FUNC45(dev)) {
		FUNC38(dev, RES_TR_FREE_STRUCTS_ONLY);
		FUNC48(dev);
	}

	if (FUNC47(dev))
		FUNC55(dev);

err_close:
	FUNC29(dev);

err_fw:
	FUNC28(dev);

err_mfunc:
	if (FUNC47(dev))
		FUNC48(dev);

err_cmd:
	FUNC30(dev, MLX4_CMD_CLEANUP_ALL);

err_sriov:
	if (dev->flags & MLX4_FLAG_SRIOV && !existing_vfs) {
		FUNC60(pdev);
		dev->flags &= ~MLX4_FLAG_SRIOV;
	}

	if (FUNC45(dev) && dev->persist->num_vfs && !reset_flow)
		FUNC3(&pf_loading);

	FUNC7(priv->dev.dev_vfs);

	if (!FUNC47(dev))
		FUNC37(dev);

	FUNC7(dev_cap);
	return err;
}