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
struct wbsd_host {int config; int unlock_code; int chip_id; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENODEV ; 
 int /*<<< orphan*/  WBSD_CONF_ID_HI ; 
 int /*<<< orphan*/  WBSD_CONF_ID_LO ; 
 int* config_ports ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int* unlock_codes ; 
 int* valid_ids ; 
 int /*<<< orphan*/  FUNC6 (struct wbsd_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct wbsd_host*) ; 

__attribute__((used)) static int FUNC8(struct wbsd_host *host)
{
	int i, j, k;
	int id;

	/*
	 * Iterate through all ports, all codes to
	 * find hardware that is in our known list.
	 */
	for (i = 0; i < FUNC0(config_ports); i++) {
		if (!FUNC5(config_ports[i], 2, DRIVER_NAME))
			continue;

		for (j = 0; j < FUNC0(unlock_codes); j++) {
			id = 0xFFFF;

			host->config = config_ports[i];
			host->unlock_code = unlock_codes[j];

			FUNC7(host);

			FUNC3(WBSD_CONF_ID_HI, config_ports[i]);
			id = FUNC2(config_ports[i] + 1) << 8;

			FUNC3(WBSD_CONF_ID_LO, config_ports[i]);
			id |= FUNC2(config_ports[i] + 1);

			FUNC6(host);

			for (k = 0; k < FUNC0(valid_ids); k++) {
				if (id == valid_ids[k]) {
					host->chip_id = id;

					return 0;
				}
			}

			if (id != 0xFFFF) {
				FUNC1("Unknown hardware (id %x) found at %x\n",
					id, config_ports[i]);
			}
		}

		FUNC4(config_ports[i], 2);
	}

	host->config = 0;
	host->unlock_code = 0;

	return -ENODEV;
}