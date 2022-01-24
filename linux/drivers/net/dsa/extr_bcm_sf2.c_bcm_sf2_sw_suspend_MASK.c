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
struct dsa_switch {unsigned int num_ports; } ;
struct bcm_sf2_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm_sf2_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct dsa_switch*,unsigned int) ; 
 struct bcm_sf2_priv* FUNC2 (struct dsa_switch*) ; 
 scalar_t__ FUNC3 (struct dsa_switch*,unsigned int) ; 
 scalar_t__ FUNC4 (struct dsa_switch*,unsigned int) ; 

__attribute__((used)) static int FUNC5(struct dsa_switch *ds)
{
	struct bcm_sf2_priv *priv = FUNC2(ds);
	unsigned int port;

	FUNC0(priv);

	/* Disable all ports physically present including the IMP
	 * port, the other ones have already been disabled during
	 * bcm_sf2_sw_setup
	 */
	for (port = 0; port < ds->num_ports; port++) {
		if (FUNC4(ds, port) || FUNC3(ds, port))
			FUNC1(ds, port);
	}

	return 0;
}