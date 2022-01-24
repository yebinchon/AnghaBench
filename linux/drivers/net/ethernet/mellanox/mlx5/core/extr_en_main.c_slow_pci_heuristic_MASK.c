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
typedef  int u32 ;
struct mlx5_core_dev {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int MLX5E_SLOW_PCI_RATIO ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct mlx5_core_dev *mdev)
{
	u32 link_speed = 0;
	u32 pci_bw = 0;

	FUNC1(mdev, &link_speed);
	pci_bw = FUNC2(mdev->pdev, NULL, NULL, NULL);
	FUNC0(mdev, "Max link speed = %d, PCI BW = %d\n",
			   link_speed, pci_bw);

#define MLX5E_SLOW_PCI_RATIO (2)

	return link_speed && pci_bw &&
		link_speed > MLX5E_SLOW_PCI_RATIO * pci_bw;
}