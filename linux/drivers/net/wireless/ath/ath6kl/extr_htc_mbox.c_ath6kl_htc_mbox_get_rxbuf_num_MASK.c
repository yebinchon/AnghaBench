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
struct htc_target {int /*<<< orphan*/  rx_lock; TYPE_1__* endpoint; } ;
typedef  enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;
struct TYPE_2__ {int /*<<< orphan*/  rx_bufq; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct htc_target *target,
			     enum htc_endpoint_id endpoint)
{
	int num;

	FUNC1(&target->rx_lock);
	num = FUNC0(&(target->endpoint[endpoint].rx_bufq));
	FUNC2(&target->rx_lock);
	return num;
}