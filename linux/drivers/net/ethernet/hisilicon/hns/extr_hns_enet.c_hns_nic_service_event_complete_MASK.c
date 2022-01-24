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
struct hns_nic_priv {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  NIC_STATE_SERVICE_SCHED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct hns_nic_priv *priv)
{
	FUNC0(!FUNC3(NIC_STATE_SERVICE_SCHED, &priv->state));
	/* make sure to commit the things */
	FUNC2();
	FUNC1(NIC_STATE_SERVICE_SCHED, &priv->state);
}