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
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct mlx5_core_health {int /*<<< orphan*/  health_counter; } ;
struct TYPE_2__ {struct mlx5_core_health health; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct mlx5_core_dev* FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *pdev)
{
	struct mlx5_core_dev *dev = FUNC3(pdev);
	struct mlx5_core_health *health = &dev->priv.health;
	const int niter = 100;
	u32 last_count = 0;
	u32 count;
	int i;

	for (i = 0; i < niter; i++) {
		count = FUNC0(health->health_counter);
		if (count && count != 0xffffffff) {
			if (last_count && last_count != count) {
				FUNC1(dev,
					       "wait vital counter value 0x%x after %d iterations\n",
					       count, i);
				return 0;
			}
			last_count = count;
		}
		FUNC2(50);
	}

	return -ETIMEDOUT;
}