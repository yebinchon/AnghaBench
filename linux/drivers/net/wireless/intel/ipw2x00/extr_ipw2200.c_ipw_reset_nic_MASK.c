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
struct ipw_priv {int status; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_state; int /*<<< orphan*/  wait_command_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int STATUS_HCMD_ACTIVE ; 
 int STATUS_SCANNING ; 
 int STATUS_SCAN_ABORTING ; 
 int FUNC1 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ipw_priv *priv)
{
	int rc = 0;
	unsigned long flags;

	FUNC0(">>\n");

	rc = FUNC1(priv);

	FUNC2(&priv->lock, flags);
	/* Clear the 'host command active' bit... */
	priv->status &= ~STATUS_HCMD_ACTIVE;
	FUNC4(&priv->wait_command_queue);
	priv->status &= ~(STATUS_SCANNING | STATUS_SCAN_ABORTING);
	FUNC4(&priv->wait_state);
	FUNC3(&priv->lock, flags);

	FUNC0("<<\n");
	return rc;
}