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
struct seq_file {struct mei_device* private; } ;
struct mei_device {scalar_t__ hbm_state; int /*<<< orphan*/  hbm_f_dr_supported; int /*<<< orphan*/  hbm_f_os_supported; int /*<<< orphan*/  hbm_f_fa_supported; int /*<<< orphan*/  hbm_f_ev_supported; int /*<<< orphan*/  hbm_f_dot_supported; int /*<<< orphan*/  hbm_f_ie_supported; int /*<<< orphan*/  hbm_f_dc_supported; int /*<<< orphan*/  hbm_f_pg_supported; int /*<<< orphan*/  dev_state; } ;

/* Variables and functions */
 scalar_t__ MEI_HBM_ENUM_CLIENTS ; 
 scalar_t__ MEI_HBM_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC7(struct seq_file *m, void *unused)
{
	struct mei_device *dev = m->private;

	FUNC5(m, "dev: %s\n", FUNC0(dev->dev_state));
	FUNC5(m, "hbm: %s\n", FUNC1(dev->hbm_state));

	if (dev->hbm_state >= MEI_HBM_ENUM_CLIENTS &&
	    dev->hbm_state <= MEI_HBM_STARTED) {
		FUNC6(m, "hbm features:\n");
		FUNC5(m, "\tPG: %01d\n", dev->hbm_f_pg_supported);
		FUNC5(m, "\tDC: %01d\n", dev->hbm_f_dc_supported);
		FUNC5(m, "\tIE: %01d\n", dev->hbm_f_ie_supported);
		FUNC5(m, "\tDOT: %01d\n", dev->hbm_f_dot_supported);
		FUNC5(m, "\tEV: %01d\n", dev->hbm_f_ev_supported);
		FUNC5(m, "\tFA: %01d\n", dev->hbm_f_fa_supported);
		FUNC5(m, "\tOS: %01d\n", dev->hbm_f_os_supported);
		FUNC5(m, "\tDR: %01d\n", dev->hbm_f_dr_supported);
	}

	FUNC5(m, "pg:  %s, %s\n",
		   FUNC2(dev) ? "ENABLED" : "DISABLED",
		   FUNC4(FUNC3(dev)));
	return 0;
}