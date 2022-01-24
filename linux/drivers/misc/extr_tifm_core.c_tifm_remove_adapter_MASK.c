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
struct tifm_adapter {unsigned int num_sockets; int /*<<< orphan*/  dev; int /*<<< orphan*/  id; TYPE_1__** sockets; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tifm_adapter_idr ; 
 int /*<<< orphan*/  tifm_adapter_lock ; 
 int /*<<< orphan*/  workqueue ; 

void FUNC6(struct tifm_adapter *fm)
{
	unsigned int cnt;

	FUNC2(workqueue);
	for (cnt = 0; cnt < fm->num_sockets; ++cnt) {
		if (fm->sockets[cnt])
			FUNC1(&fm->sockets[cnt]->dev);
	}

	FUNC4(&tifm_adapter_lock);
	FUNC3(&tifm_adapter_idr, fm->id);
	FUNC5(&tifm_adapter_lock);
	FUNC0(&fm->dev);
}