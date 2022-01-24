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
struct mlx5_fc {int /*<<< orphan*/  id; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlx5_fc* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_fc*) ; 
 struct mlx5_fc* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mlx5_fc *FUNC4(struct mlx5_core_dev *dev)
{
	struct mlx5_fc *counter;
	int err;

	counter = FUNC2(sizeof(*counter), GFP_KERNEL);
	if (!counter)
		return FUNC0(-ENOMEM);

	err = FUNC3(dev, &counter->id);
	if (err) {
		FUNC1(counter);
		return FUNC0(err);
	}

	return counter;
}