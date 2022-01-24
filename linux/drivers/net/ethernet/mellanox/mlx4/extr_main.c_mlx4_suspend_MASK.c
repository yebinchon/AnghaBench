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
struct mlx4_dev_persistent {int interface_state; int /*<<< orphan*/  interface_state_mutex; struct mlx4_dev* dev; } ;
struct mlx4_dev {int dummy; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int MLX4_INTERFACE_STATE_UP ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct mlx4_dev_persistent* FUNC4 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *pdev, pm_message_t state)
{
	struct mlx4_dev_persistent *persist = FUNC4(pdev);
	struct mlx4_dev	*dev = persist->dev;

	FUNC0(dev, "suspend was called\n");
	FUNC2(&persist->interface_state_mutex);
	if (persist->interface_state & MLX4_INTERFACE_STATE_UP)
		FUNC1(pdev);
	FUNC3(&persist->interface_state_mutex);

	return 0;
}