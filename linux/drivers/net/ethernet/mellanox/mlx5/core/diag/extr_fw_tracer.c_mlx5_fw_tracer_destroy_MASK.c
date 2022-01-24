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
struct mlx5_fw_tracer {int /*<<< orphan*/  work_queue; int /*<<< orphan*/  read_fw_strings_work; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_fw_tracer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_fw_tracer*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_fw_tracer*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_fw_tracer*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_fw_tracer*) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_fw_tracer*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_fw_tracer*) ; 

void FUNC11(struct mlx5_fw_tracer *tracer)
{
	if (FUNC0(tracer))
		return;

	FUNC5(tracer->dev, "FWTracer: Destroy\n");

	FUNC1(&tracer->read_fw_strings_work);
	FUNC7(tracer);
	FUNC6(tracer);
	FUNC8(tracer);
	FUNC10(tracer);
	FUNC9(tracer);
	FUNC3(tracer->work_queue);
	FUNC2(tracer->work_queue);
	FUNC4(tracer);
}