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
struct dsa_switch {int dummy; } ;
struct TYPE_2__ {unsigned int num_ports; } ;
struct bcm_sf2_priv {TYPE_1__ hw_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dsa_switch*) ; 
 int /*<<< orphan*/  FUNC1 (struct dsa_switch*) ; 
 int /*<<< orphan*/  FUNC2 (struct dsa_switch*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct dsa_switch*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct dsa_switch*,unsigned int,int /*<<< orphan*/ *) ; 
 struct bcm_sf2_priv* FUNC5 (struct dsa_switch*) ; 
 scalar_t__ FUNC6 (struct dsa_switch*,unsigned int) ; 
 scalar_t__ FUNC7 (struct dsa_switch*,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct dsa_switch *ds)
{
	struct bcm_sf2_priv *priv = FUNC5(ds);
	unsigned int port;

	/* Enable all valid ports and disable those unused */
	for (port = 0; port < priv->hw_params.num_ports; port++) {
		/* IMP port receives special treatment */
		if (FUNC7(ds, port))
			FUNC4(ds, port, NULL);
		else if (FUNC6(ds, port))
			FUNC2(ds, port);
		else
			FUNC3(ds, port);
	}

	FUNC0(ds);
	FUNC1(ds);

	return 0;
}