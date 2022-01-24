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
struct ice_pf {TYPE_1__* pdev; } ;
struct firmware {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICE_DDP_PKG_FILE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct firmware const**,char*,struct device*) ; 
 char* FUNC2 (struct ice_pf*) ; 
 int /*<<< orphan*/  FUNC3 (struct firmware const*,struct ice_pf*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct firmware const*) ; 
 int FUNC6 (struct firmware const**,int /*<<< orphan*/ ,struct device*) ; 

__attribute__((used)) static void FUNC7(struct ice_pf *pf)
{
	char *opt_fw_filename = FUNC2(pf);
	const struct firmware *firmware = NULL;
	struct device *dev = &pf->pdev->dev;
	int err = 0;

	/* optional device-specific DDP (if present) overrides the default DDP
	 * package file. kernel logs a debug message if the file doesn't exist,
	 * and warning messages for other errors.
	 */
	if (opt_fw_filename) {
		err = FUNC1(&firmware, opt_fw_filename, dev);
		if (err) {
			FUNC4(opt_fw_filename);
			goto dflt_pkg_load;
		}

		/* request for firmware was successful. Download to device */
		FUNC3(firmware, pf);
		FUNC4(opt_fw_filename);
		FUNC5(firmware);
		return;
	}

dflt_pkg_load:
	err = FUNC6(&firmware, ICE_DDP_PKG_FILE, dev);
	if (err) {
		FUNC0(dev,
			"The DDP package file was not found or could not be read. Entering Safe Mode\n");
		return;
	}

	/* request for firmware was successful. Download to device */
	FUNC3(firmware, pf);
	FUNC5(firmware);
}