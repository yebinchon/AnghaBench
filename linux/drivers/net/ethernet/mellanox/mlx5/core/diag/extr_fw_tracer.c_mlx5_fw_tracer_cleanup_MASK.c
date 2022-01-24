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
struct TYPE_2__ {int /*<<< orphan*/  pdn; int /*<<< orphan*/  mkey; } ;
struct mlx5_fw_tracer {TYPE_1__ buff; int /*<<< orphan*/  dev; scalar_t__ owner; int /*<<< orphan*/  handle_traces_work; int /*<<< orphan*/  ownership_change_work; int /*<<< orphan*/  nb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_fw_tracer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_fw_tracer*) ; 

void FUNC7(struct mlx5_fw_tracer *tracer)
{
	if (FUNC0(tracer))
		return;

	FUNC2(tracer->dev, "FWTracer: Cleanup, is owner ? (%d)\n",
		      tracer->owner);
	FUNC5(tracer->dev, &tracer->nb);
	FUNC1(&tracer->ownership_change_work);
	FUNC1(&tracer->handle_traces_work);

	if (tracer->owner)
		FUNC6(tracer);

	FUNC4(tracer->dev, &tracer->buff.mkey);
	FUNC3(tracer->dev, tracer->buff.pdn);
}