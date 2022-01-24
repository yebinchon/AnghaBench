#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int nopoll; } ;
struct mlxsw_pci {scalar_t__ max_cqe_ver; TYPE_1__ cmd; scalar_t__ num_sdq_cqs; int /*<<< orphan*/  core; struct pci_dev* pdev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MLXSW_PCI_CQE01_COUNT ; 
 scalar_t__ MLXSW_PCI_CQE2_COUNT ; 
 scalar_t__ MLXSW_PCI_CQE_V2 ; 
 scalar_t__ MLXSW_PCI_CQS_MAX ; 
 scalar_t__ MLXSW_PCI_EQE_COUNT ; 
 scalar_t__ MLXSW_PCI_EQS_COUNT ; 
 scalar_t__ MLXSW_PCI_WQE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mlxsw_pci_cq_ops ; 
 int /*<<< orphan*/  mlxsw_pci_eq_ops ; 
 int /*<<< orphan*/  FUNC12 (struct mlxsw_pci*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct mlxsw_pci*,char*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  mlxsw_pci_rdq_ops ; 
 int /*<<< orphan*/  mlxsw_pci_sdq_ops ; 

__attribute__((used)) static int FUNC14(struct mlxsw_pci *mlxsw_pci, char *mbox)
{
	struct pci_dev *pdev = mlxsw_pci->pdev;
	u8 num_sdqs;
	u8 sdq_log2sz;
	u8 num_rdqs;
	u8 rdq_log2sz;
	u8 num_cqs;
	u8 cq_log2sz;
	u8 cqv2_log2sz;
	u8 num_eqs;
	u8 eq_log2sz;
	int err;

	FUNC10(mbox);
	err = FUNC11(mlxsw_pci->core, mbox);
	if (err)
		return err;

	num_sdqs = FUNC9(mbox);
	sdq_log2sz = FUNC5(mbox);
	num_rdqs = FUNC8(mbox);
	rdq_log2sz = FUNC4(mbox);
	num_cqs = FUNC6(mbox);
	cq_log2sz = FUNC1(mbox);
	cqv2_log2sz = FUNC2(mbox);
	num_eqs = FUNC7(mbox);
	eq_log2sz = FUNC3(mbox);

	if (num_sdqs + num_rdqs > num_cqs ||
	    num_cqs > MLXSW_PCI_CQS_MAX || num_eqs != MLXSW_PCI_EQS_COUNT) {
		FUNC0(&pdev->dev, "Unsupported number of queues\n");
		return -EINVAL;
	}

	if ((1 << sdq_log2sz != MLXSW_PCI_WQE_COUNT) ||
	    (1 << rdq_log2sz != MLXSW_PCI_WQE_COUNT) ||
	    (1 << cq_log2sz != MLXSW_PCI_CQE01_COUNT) ||
	    (mlxsw_pci->max_cqe_ver == MLXSW_PCI_CQE_V2 &&
	     (1 << cqv2_log2sz != MLXSW_PCI_CQE2_COUNT)) ||
	    (1 << eq_log2sz != MLXSW_PCI_EQE_COUNT)) {
		FUNC0(&pdev->dev, "Unsupported number of async queue descriptors\n");
		return -EINVAL;
	}

	mlxsw_pci->num_sdq_cqs = num_sdqs;

	err = FUNC13(mlxsw_pci, mbox, &mlxsw_pci_eq_ops,
					 num_eqs);
	if (err) {
		FUNC0(&pdev->dev, "Failed to initialize event queues\n");
		return err;
	}

	err = FUNC13(mlxsw_pci, mbox, &mlxsw_pci_cq_ops,
					 num_cqs);
	if (err) {
		FUNC0(&pdev->dev, "Failed to initialize completion queues\n");
		goto err_cqs_init;
	}

	err = FUNC13(mlxsw_pci, mbox, &mlxsw_pci_sdq_ops,
					 num_sdqs);
	if (err) {
		FUNC0(&pdev->dev, "Failed to initialize send descriptor queues\n");
		goto err_sdqs_init;
	}

	err = FUNC13(mlxsw_pci, mbox, &mlxsw_pci_rdq_ops,
					 num_rdqs);
	if (err) {
		FUNC0(&pdev->dev, "Failed to initialize receive descriptor queues\n");
		goto err_rdqs_init;
	}

	/* We have to poll in command interface until queues are initialized */
	mlxsw_pci->cmd.nopoll = true;
	return 0;

err_rdqs_init:
	FUNC12(mlxsw_pci, &mlxsw_pci_sdq_ops);
err_sdqs_init:
	FUNC12(mlxsw_pci, &mlxsw_pci_cq_ops);
err_cqs_init:
	FUNC12(mlxsw_pci, &mlxsw_pci_eq_ops);
	return err;
}