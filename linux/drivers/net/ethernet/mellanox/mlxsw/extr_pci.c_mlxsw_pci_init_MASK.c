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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct mlxsw_res {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  in_mbox; int /*<<< orphan*/  out_mbox; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  subminor; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct TYPE_5__ {int /*<<< orphan*/  device_kind; TYPE_1__ fw_rev; } ;
struct mlxsw_pci {TYPE_3__ cmd; TYPE_2__ bus_info; int /*<<< orphan*/  max_cqe_ver; int /*<<< orphan*/  free_running_clock_offset; int /*<<< orphan*/  doorbell_offset; int /*<<< orphan*/  id; struct mlxsw_core* core; struct pci_dev* pdev; } ;
struct mlxsw_core {int dummy; } ;
struct mlxsw_config_profile {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CQE_V0 ; 
 int /*<<< orphan*/  CQE_V1 ; 
 int /*<<< orphan*/  CQE_V2 ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct mlxsw_core*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mlxsw_core*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_PCI_CQE_V0 ; 
 int /*<<< orphan*/  MLXSW_PCI_CQE_V1 ; 
 int /*<<< orphan*/  MLXSW_PCI_CQE_V2 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int FUNC15 (struct mlxsw_core*,char*) ; 
 int FUNC16 (struct mlxsw_core*,char*,struct mlxsw_res*) ; 
 int FUNC17 (struct mlxsw_pci*) ; 
 int /*<<< orphan*/  FUNC18 (struct mlxsw_pci*) ; 
 int FUNC19 (struct mlxsw_pci*,char*) ; 
 int FUNC20 (struct mlxsw_pci*,char*) ; 
 int FUNC21 (struct mlxsw_pci*,char*,struct mlxsw_config_profile const*,struct mlxsw_res*) ; 
 int /*<<< orphan*/  mlxsw_pci_eq_irq_handler ; 
 int /*<<< orphan*/  FUNC22 (struct mlxsw_pci*) ; 
 int /*<<< orphan*/  FUNC23 (struct mlxsw_pci*) ; 
 int FUNC24 (struct mlxsw_pci*,char*,int /*<<< orphan*/ ) ; 
 int FUNC25 (struct mlxsw_pci*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct mlxsw_pci*,int /*<<< orphan*/ *) ; 
 int FUNC27 (struct mlxsw_pci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlxsw_pci*) ; 

__attribute__((used)) static int FUNC31(void *bus_priv, struct mlxsw_core *mlxsw_core,
			  const struct mlxsw_config_profile *profile,
			  struct mlxsw_res *res)
{
	struct mlxsw_pci *mlxsw_pci = bus_priv;
	struct pci_dev *pdev = mlxsw_pci->pdev;
	char *mbox;
	u16 num_pages;
	int err;

	FUNC28(&mlxsw_pci->cmd.lock);
	FUNC3(&mlxsw_pci->cmd.wait);

	mlxsw_pci->core = mlxsw_core;

	mbox = FUNC4();
	if (!mbox)
		return -ENOMEM;

	err = FUNC25(mlxsw_pci, &mlxsw_pci->cmd.in_mbox);
	if (err)
		goto mbox_put;

	err = FUNC25(mlxsw_pci, &mlxsw_pci->cmd.out_mbox);
	if (err)
		goto err_out_mbox_alloc;

	err = FUNC27(mlxsw_pci, mlxsw_pci->id);
	if (err)
		goto err_sw_reset;

	err = FUNC17(mlxsw_pci);
	if (err < 0) {
		FUNC2(&pdev->dev, "MSI-X init failed\n");
		goto err_alloc_irq;
	}

	err = FUNC15(mlxsw_core, mbox);
	if (err)
		goto err_query_fw;

	mlxsw_pci->bus_info.fw_rev.major =
		FUNC12(mbox);
	mlxsw_pci->bus_info.fw_rev.minor =
		FUNC13(mbox);
	mlxsw_pci->bus_info.fw_rev.subminor =
		FUNC14(mbox);

	if (FUNC6(mbox) != 1) {
		FUNC2(&pdev->dev, "Unsupported cmd interface revision ID queried from hw\n");
		err = -EINVAL;
		goto err_iface_rev;
	}
	if (FUNC7(mbox) != 0) {
		FUNC2(&pdev->dev, "Unsupported doorbell page bar queried from hw\n");
		err = -EINVAL;
		goto err_doorbell_page_bar;
	}

	mlxsw_pci->doorbell_offset =
		FUNC8(mbox);

	if (FUNC9(mbox) != 0) {
		FUNC2(&pdev->dev, "Unsupported free running clock BAR queried from hw\n");
		err = -EINVAL;
		goto err_fr_rn_clk_bar;
	}

	mlxsw_pci->free_running_clock_offset =
		FUNC10(mbox);

	num_pages = FUNC11(mbox);
	err = FUNC24(mlxsw_pci, mbox, num_pages);
	if (err)
		goto err_fw_area_init;

	err = FUNC20(mlxsw_pci, mbox);
	if (err)
		goto err_boardinfo;

	err = FUNC16(mlxsw_core, mbox, res);
	if (err)
		goto err_query_resources;

	if (FUNC1(mlxsw_core, CQE_V2) &&
	    FUNC0(mlxsw_core, CQE_V2))
		mlxsw_pci->max_cqe_ver = MLXSW_PCI_CQE_V2;
	else if (FUNC1(mlxsw_core, CQE_V1) &&
		 FUNC0(mlxsw_core, CQE_V1))
		mlxsw_pci->max_cqe_ver = MLXSW_PCI_CQE_V1;
	else if ((FUNC1(mlxsw_core, CQE_V0) &&
		  FUNC0(mlxsw_core, CQE_V0)) ||
		 !FUNC1(mlxsw_core, CQE_V0)) {
		mlxsw_pci->max_cqe_ver = MLXSW_PCI_CQE_V0;
	} else {
		FUNC2(&pdev->dev, "Invalid supported CQE version combination reported\n");
		goto err_cqe_v_check;
	}

	err = FUNC21(mlxsw_pci, mbox, profile, res);
	if (err)
		goto err_config_profile;

	err = FUNC19(mlxsw_pci, mbox);
	if (err)
		goto err_aqs_init;

	err = FUNC30(FUNC29(pdev, 0),
			  mlxsw_pci_eq_irq_handler, 0,
			  mlxsw_pci->bus_info.device_kind, mlxsw_pci);
	if (err) {
		FUNC2(&pdev->dev, "IRQ request failed\n");
		goto err_request_eq_irq;
	}

	goto mbox_put;

err_request_eq_irq:
	FUNC18(mlxsw_pci);
err_aqs_init:
err_config_profile:
err_cqe_v_check:
err_query_resources:
err_boardinfo:
	FUNC23(mlxsw_pci);
err_fw_area_init:
err_fr_rn_clk_bar:
err_doorbell_page_bar:
err_iface_rev:
err_query_fw:
	FUNC22(mlxsw_pci);
err_alloc_irq:
err_sw_reset:
	FUNC26(mlxsw_pci, &mlxsw_pci->cmd.out_mbox);
err_out_mbox_alloc:
	FUNC26(mlxsw_pci, &mlxsw_pci->cmd.in_mbox);
mbox_put:
	FUNC5(mbox);
	return err;
}