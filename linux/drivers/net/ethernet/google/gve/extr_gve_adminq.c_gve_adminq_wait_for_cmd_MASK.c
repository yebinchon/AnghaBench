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
typedef  scalar_t__ u32 ;
struct gve_priv {TYPE_1__* reg_bar0; } ;
struct TYPE_2__ {int /*<<< orphan*/  adminq_event_counter; } ;

/* Variables and functions */
 int /*<<< orphan*/  GVE_ADMINQ_SLEEP_LEN ; 
 int GVE_MAX_ADMINQ_EVENT_COUNTER_CHECK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct gve_priv *priv, u32 prod_cnt)
{
	int i;

	for (i = 0; i < GVE_MAX_ADMINQ_EVENT_COUNTER_CHECK; i++) {
		if (FUNC0(&priv->reg_bar0->adminq_event_counter)
		    == prod_cnt)
			return true;
		FUNC1(GVE_ADMINQ_SLEEP_LEN);
	}

	return false;
}