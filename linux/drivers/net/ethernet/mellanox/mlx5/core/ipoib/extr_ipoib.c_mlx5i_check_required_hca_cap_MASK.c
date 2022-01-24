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
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ MLX5_CAP_PORT_TYPE_IB ; 
 int /*<<< orphan*/  ipoib_enhanced_offloads ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*) ; 
 int /*<<< orphan*/  port_type ; 

__attribute__((used)) static int FUNC2(struct mlx5_core_dev *mdev)
{
	if (FUNC0(mdev, port_type) != MLX5_CAP_PORT_TYPE_IB)
		return -EOPNOTSUPP;

	if (!FUNC0(mdev, ipoib_enhanced_offloads)) {
		FUNC1(mdev, "IPoIB enhanced offloads are not supported\n");
		return -EOPNOTSUPP;
	}

	return 0;
}