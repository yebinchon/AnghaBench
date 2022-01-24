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
struct gve_priv {TYPE_1__* reg_bar0; } ;
struct TYPE_2__ {int /*<<< orphan*/  adminq_pfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  GVE_ADMINQ_SLEEP_LEN ; 
 int GVE_MAX_ADMINQ_RELEASE_CHECK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct gve_priv*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct gve_priv *priv)
{
	int i = 0;

	/* Tell the device the adminq is leaving */
	FUNC5(0x0, &priv->reg_bar0->adminq_pfn);
	while (FUNC4(&priv->reg_bar0->adminq_pfn)) {
		/* If this is reached the device is unrecoverable and still
		 * holding memory. Continue looping to avoid memory corruption,
		 * but WARN so it is visible what is going on.
		 */
		if (i == GVE_MAX_ADMINQ_RELEASE_CHECK)
			FUNC0(1, "Unrecoverable platform error!");
		i++;
		FUNC6(GVE_ADMINQ_SLEEP_LEN);
	}
	FUNC3(priv);
	FUNC2(priv);
	FUNC1(priv);
}