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
struct mlx5_fw_tracer {struct mlx5_core_dev* dev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*,int) ; 
 int FUNC2 (struct mlx5_fw_tracer*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_fw_tracer*) ; 
 int FUNC4 (struct mlx5_fw_tracer*) ; 
 int FUNC5 (struct mlx5_fw_tracer*,int,int) ; 

__attribute__((used)) static int FUNC6(struct mlx5_fw_tracer *tracer)
{
	struct mlx5_core_dev *dev = tracer->dev;
	int err;

	err = FUNC2(tracer);
	if (err) {
		FUNC0(dev, "FWTracer: Ownership was not granted %d\n", err);
		/* Don't fail since ownership can be acquired on a later FW event */
		return 0;
	}

	err = FUNC4(tracer);
	if (err) {
		FUNC1(dev, "FWTracer: Failed to set tracer configuration %d\n", err);
		goto release_ownership;
	}

	/* enable tracer & trace events */
	err = FUNC5(tracer, 1, 1);
	if (err) {
		FUNC1(dev, "FWTracer: Failed to enable tracer %d\n", err);
		goto release_ownership;
	}

	FUNC0(dev, "FWTracer: Ownership granted and active\n");
	return 0;

release_ownership:
	FUNC3(tracer);
	return err;
}