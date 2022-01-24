#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  pdn; } ;
struct TYPE_4__ {int /*<<< orphan*/  loaded; } ;
struct mlx5_fw_tracer {TYPE_1__ buff; int /*<<< orphan*/  nb; int /*<<< orphan*/  read_fw_strings_work; int /*<<< orphan*/  work_queue; TYPE_2__ str_db; struct mlx5_core_dev* dev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_TRACER ; 
 scalar_t__ FUNC0 (struct mlx5_fw_tracer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fw_tracer_event ; 
 int FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct mlx5_fw_tracer*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_fw_tracer*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC9(struct mlx5_fw_tracer *tracer)
{
	struct mlx5_core_dev *dev;
	int err;

	if (FUNC0(tracer))
		return 0;

	dev = tracer->dev;

	if (!tracer->str_db.loaded)
		FUNC8(tracer->work_queue, &tracer->read_fw_strings_work);

	err = FUNC2(dev, &tracer->buff.pdn);
	if (err) {
		FUNC4(dev, "FWTracer: Failed to allocate PD %d\n", err);
		return err;
	}

	err = FUNC6(tracer);
	if (err) {
		FUNC4(dev, "FWTracer: Failed to create mkey %d\n", err);
		goto err_dealloc_pd;
	}

	FUNC1(&tracer->nb, fw_tracer_event, DEVICE_TRACER);
	FUNC5(dev, &tracer->nb);

	FUNC7(tracer);

	return 0;

err_dealloc_pd:
	FUNC3(dev, tracer->buff.pdn);
	return err;
}