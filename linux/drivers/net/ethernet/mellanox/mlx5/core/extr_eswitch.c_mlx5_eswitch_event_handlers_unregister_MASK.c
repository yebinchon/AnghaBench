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
struct TYPE_2__ {int /*<<< orphan*/  nb; } ;
struct mlx5_eswitch {scalar_t__ mode; int /*<<< orphan*/  work_queue; int /*<<< orphan*/  nb; int /*<<< orphan*/  dev; TYPE_1__ esw_funcs; } ;

/* Variables and functions */
 scalar_t__ MLX5_ESWITCH_OFFLOADS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mlx5_eswitch *esw)
{
	if (esw->mode == MLX5_ESWITCH_OFFLOADS && FUNC2(esw->dev))
		FUNC1(esw->dev, &esw->esw_funcs.nb);

	FUNC1(esw->dev, &esw->nb);

	FUNC0(esw->work_queue);
}