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
struct device {int dummy; } ;
struct cec_dmi_match {char* conn; int /*<<< orphan*/  devname; int /*<<< orphan*/  product_name; int /*<<< orphan*/  sys_vendor; } ;

/* Variables and functions */
 int FUNC0 (struct cec_dmi_match*) ; 
 int /*<<< orphan*/  DMI_PRODUCT_NAME ; 
 int /*<<< orphan*/  DMI_SYS_VENDOR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct device* FUNC1 (int /*<<< orphan*/ ) ; 
 struct device* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_bus_type ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 struct cec_dmi_match* secocec_dmi_match_table ; 

__attribute__((used)) static struct device *FUNC5(struct device *dev,
						const char **conn)
{
	int i;

	for (i = 0 ; i < FUNC0(secocec_dmi_match_table) ; ++i) {
		const struct cec_dmi_match *m = &secocec_dmi_match_table[i];

		if (FUNC3(DMI_SYS_VENDOR, m->sys_vendor) &&
		    FUNC3(DMI_PRODUCT_NAME, m->product_name)) {
			struct device *d;

			/* Find the device, bail out if not yet registered */
			d = FUNC2(&pci_bus_type, NULL,
						    m->devname);
			if (!d)
				return FUNC1(-EPROBE_DEFER);

			FUNC4(d);
			*conn = m->conn;
			return d;
		}
	}

	return FUNC1(-EINVAL);
}