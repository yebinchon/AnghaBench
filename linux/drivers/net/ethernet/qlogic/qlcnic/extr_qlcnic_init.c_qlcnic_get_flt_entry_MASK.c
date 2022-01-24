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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct qlcnic_flt_header {int len; } ;
struct qlcnic_flt_entry {scalar_t__ region; } ;
struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ QLCNIC_FLT_LOCATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_flt_entry*,struct qlcnic_flt_entry*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_flt_entry*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct qlcnic_adapter*,scalar_t__,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qlcnic_flt_entry*) ; 
 struct qlcnic_flt_entry* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct qlcnic_adapter *adapter, u8 region,
				struct qlcnic_flt_entry *region_entry)
{
	struct qlcnic_flt_header flt_hdr;
	struct qlcnic_flt_entry *flt_entry;
	int i = 0, ret;
	u32 entry_size;

	FUNC2(region_entry, 0, sizeof(struct qlcnic_flt_entry));
	ret = FUNC3(adapter, QLCNIC_FLT_LOCATION,
					 (u8 *)&flt_hdr,
					 sizeof(struct qlcnic_flt_header));
	if (ret) {
		FUNC0(&adapter->pdev->dev,
			 "error reading flash layout header\n");
		return -EIO;
	}

	entry_size = flt_hdr.len - sizeof(struct qlcnic_flt_header);
	flt_entry = FUNC5(entry_size);
	if (flt_entry == NULL)
		return -EIO;

	ret = FUNC3(adapter, QLCNIC_FLT_LOCATION +
					 sizeof(struct qlcnic_flt_header),
					 (u8 *)flt_entry, entry_size);
	if (ret) {
		FUNC0(&adapter->pdev->dev,
			 "error reading flash layout entries\n");
		goto err_out;
	}

	while (i < (entry_size/sizeof(struct qlcnic_flt_entry))) {
		if (flt_entry[i].region == region)
			break;
		i++;
	}
	if (i >= (entry_size/sizeof(struct qlcnic_flt_entry))) {
		FUNC0(&adapter->pdev->dev,
			 "region=%x not found in %d regions\n", region, i);
		ret = -EIO;
		goto err_out;
	}
	FUNC1(region_entry, &flt_entry[i], sizeof(struct qlcnic_flt_entry));

err_out:
	FUNC4(flt_entry);
	return ret;
}