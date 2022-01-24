#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pci_dev {int dummy; } ;
struct mlx4_dev_persistent {int interface_state; int /*<<< orphan*/  dev; int /*<<< orphan*/  interface_state_mutex; } ;
typedef  int /*<<< orphan*/  pci_ers_result_t ;
typedef  scalar_t__ pci_channel_state_t ;

/* Variables and functions */
 int MLX4_INTERFACE_STATE_UP ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_DISCONNECT ; 
 int /*<<< orphan*/  PCI_ERS_RESULT_NEED_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev_persistent*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ pci_channel_io_perm_failure ; 
 struct mlx4_dev_persistent* FUNC6 (struct pci_dev*) ; 

__attribute__((used)) static pci_ers_result_t FUNC7(struct pci_dev *pdev,
					      pci_channel_state_t state)
{
	struct mlx4_dev_persistent *persist = FUNC6(pdev);

	FUNC1(persist->dev, "mlx4_pci_err_detected was called\n");
	FUNC0(persist);

	FUNC4(&persist->interface_state_mutex);
	if (persist->interface_state & MLX4_INTERFACE_STATE_UP)
		FUNC3(pdev);

	FUNC5(&persist->interface_state_mutex);
	if (state == pci_channel_io_perm_failure)
		return PCI_ERS_RESULT_DISCONNECT;

	FUNC2(persist->dev);
	return PCI_ERS_RESULT_NEED_RESET;
}