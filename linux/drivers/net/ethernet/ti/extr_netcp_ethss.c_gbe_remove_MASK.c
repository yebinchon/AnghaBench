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
struct netcp_device {int dummy; } ;
struct gbe_priv {int /*<<< orphan*/  dev; int /*<<< orphan*/  gbe_intf_head; int /*<<< orphan*/  tx_pipe; int /*<<< orphan*/  ale; int /*<<< orphan*/  cpts; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct gbe_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct netcp_device *netcp_device, void *inst_priv)
{
	struct gbe_priv *gbe_dev = inst_priv;

	FUNC2(&gbe_dev->timer);
	FUNC1(gbe_dev->cpts);
	FUNC0(gbe_dev->ale);
	FUNC6(&gbe_dev->tx_pipe);
	FUNC4(gbe_dev);

	if (!FUNC5(&gbe_dev->gbe_intf_head))
		FUNC3(gbe_dev->dev,
			  "unreleased ethss interfaces present\n");

	return 0;
}