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
typedef  scalar_t__ u64 ;
struct TYPE_2__ {int /*<<< orphan*/  card_name; int /*<<< orphan*/  dram_size; } ;
struct asic_fixed_properties {scalar_t__ dram_base_address; TYPE_1__ armcp_info; scalar_t__ dram_end_address; scalar_t__ dram_size; } ;
struct hl_device {int /*<<< orphan*/  dev; struct asic_fixed_properties asic_prop; struct goya_device* asic_specific; } ;
struct goya_device {int hw_cap_initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_NAME_MAX_LEN ; 
 scalar_t__ DRAM_PHYS_DEFAULT_SIZE ; 
 int /*<<< orphan*/  GOYA_DEFAULT_CARD_NAME ; 
 int HW_CAP_CPU_Q ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC1 (struct hl_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct hl_device *hdev)
{
	struct goya_device *goya = hdev->asic_specific;
	struct asic_fixed_properties *prop = &hdev->asic_prop;
	u64 dram_size;
	int rc;

	if (!(goya->hw_cap_initialized & HW_CAP_CPU_Q))
		return 0;

	rc = FUNC1(hdev);
	if (rc)
		return rc;

	dram_size = FUNC3(prop->armcp_info.dram_size);
	if (dram_size) {
		if ((!FUNC2(dram_size)) ||
				(dram_size < DRAM_PHYS_DEFAULT_SIZE)) {
			FUNC0(hdev->dev,
				"F/W reported invalid DRAM size %llu. Trying to use default size\n",
				dram_size);
			dram_size = DRAM_PHYS_DEFAULT_SIZE;
		}

		prop->dram_size = dram_size;
		prop->dram_end_address = prop->dram_base_address + dram_size;
	}

	if (!FUNC4(prop->armcp_info.card_name))
		FUNC5(prop->armcp_info.card_name, GOYA_DEFAULT_CARD_NAME,
				CARD_NAME_MAX_LEN);

	return 0;
}