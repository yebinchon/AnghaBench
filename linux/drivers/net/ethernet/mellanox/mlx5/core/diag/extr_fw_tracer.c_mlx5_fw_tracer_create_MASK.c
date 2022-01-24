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
struct mlx5_fw_tracer {int /*<<< orphan*/  work_queue; struct mlx5_core_dev* dev; int /*<<< orphan*/  handle_traces_work; int /*<<< orphan*/  read_fw_strings_work; int /*<<< orphan*/  ownership_change_work; int /*<<< orphan*/  ready_strings_list; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mlx5_fw_tracer* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_fw_tracer*) ; 
 struct mlx5_fw_tracer* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_core_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_core_dev*,char*,int) ; 
 int FUNC10 (struct mlx5_fw_tracer*) ; 
 int FUNC11 (struct mlx5_fw_tracer*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5_fw_tracer*) ; 
 int /*<<< orphan*/  mlx5_fw_tracer_handle_traces ; 
 int /*<<< orphan*/  FUNC13 (struct mlx5_fw_tracer*) ; 
 int /*<<< orphan*/  mlx5_fw_tracer_ownership_change ; 
 int FUNC14 (struct mlx5_fw_tracer*) ; 
 int /*<<< orphan*/  mlx5_tracer_read_strings_db ; 
 int /*<<< orphan*/  tracer_registers ; 

struct mlx5_fw_tracer *FUNC15(struct mlx5_core_dev *dev)
{
	struct mlx5_fw_tracer *tracer = NULL;
	int err;

	if (!FUNC3(dev, tracer_registers)) {
		FUNC8(dev, "FWTracer: Tracer capability not present\n");
		return NULL;
	}

	tracer = FUNC7(sizeof(*tracer), GFP_KERNEL);
	if (!tracer)
		return FUNC0(-ENOMEM);

	tracer->work_queue = FUNC4("mlx5_fw_tracer");
	if (!tracer->work_queue) {
		err = -ENOMEM;
		goto free_tracer;
	}

	tracer->dev = dev;

	FUNC1(&tracer->ready_strings_list);
	FUNC2(&tracer->ownership_change_work, mlx5_fw_tracer_ownership_change);
	FUNC2(&tracer->read_fw_strings_work, mlx5_tracer_read_strings_db);
	FUNC2(&tracer->handle_traces_work, mlx5_fw_tracer_handle_traces);


	err = FUNC14(tracer);
	if (err) {
		FUNC8(dev, "FWTracer: Failed to query capabilities %d\n", err);
		goto destroy_workqueue;
	}

	err = FUNC11(tracer);
	if (err) {
		FUNC9(dev, "FWTracer: Create log buffer failed %d\n", err);
		goto destroy_workqueue;
	}

	err = FUNC10(tracer);
	if (err) {
		FUNC9(dev, "FWTracer: Allocate strings database failed %d\n", err);
		goto free_log_buf;
	}

	FUNC13(tracer);
	FUNC8(dev, "FWTracer: Tracer created\n");

	return tracer;

free_log_buf:
	FUNC12(tracer);
destroy_workqueue:
	tracer->dev = NULL;
	FUNC5(tracer->work_queue);
free_tracer:
	FUNC6(tracer);
	return FUNC0(err);
}