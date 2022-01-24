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
struct map_info {int dummy; } ;
struct hyperbus_device {struct map_info map; } ;
struct cfi_private {int interleave; int /*<<< orphan*/  device_type; } ;

/* Variables and functions */
 int AM654_HBMC_CALIB_COUNT ; 
 int /*<<< orphan*/  CFI_DEVICETYPE_X16 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct map_info*,struct cfi_private*) ; 
 int FUNC1 (struct map_info*,int /*<<< orphan*/ ,struct cfi_private*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,struct map_info*,struct cfi_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct hyperbus_device *hbdev)
{
	struct map_info *map = &hbdev->map;
	struct cfi_private cfi;
	int count = AM654_HBMC_CALIB_COUNT;
	int pass_count = 0;
	int ret;

	cfi.interleave = 1;
	cfi.device_type = CFI_DEVICETYPE_X16;
	FUNC2(0xF0, 0, 0, map, &cfi, cfi.device_type, NULL);
	FUNC2(0x98, 0x55, 0, map, &cfi, cfi.device_type, NULL);

	while (count--) {
		ret = FUNC1(map, 0, &cfi);
		if (ret)
			pass_count++;
		else
			pass_count = 0;
		if (pass_count == 5)
			break;
	}

	FUNC0(0, map, &cfi);

	return ret;
}