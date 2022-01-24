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
struct TYPE_2__ {int /*<<< orphan*/  peer_pf_pages; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*,int) ; 
 int FUNC2 (struct mlx5_core_dev*) ; 
 int FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct mlx5_core_dev *dev)
{
	int err;

	err = FUNC2(dev);
	if (err) {
		FUNC0(dev, "Failed to disable peer PF HCA err(%d)\n",
			      err);
		return;
	}

	err = FUNC3(dev, &dev->priv.peer_pf_pages);
	if (err)
		FUNC1(dev, "Timeout reclaiming peer PF pages err(%d)\n",
			       err);
}