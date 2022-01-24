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
struct si476x_core {int /*<<< orphan*/  tuning; int /*<<< orphan*/  stc; int /*<<< orphan*/  command; int /*<<< orphan*/  cts; int /*<<< orphan*/  rds_read_queue; int /*<<< orphan*/  is_alive; TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct si476x_core *core)
{
	FUNC1(&core->client->dev, "Core device is dead.\n");

	FUNC0(&core->is_alive, 0);

	/* Wake up al possible waiting processes */
	FUNC3(&core->rds_read_queue);

	FUNC0(&core->cts, 1);
	FUNC2(&core->command);

	FUNC0(&core->stc, 1);
	FUNC2(&core->tuning);
}