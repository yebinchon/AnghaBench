#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int fw_supports_md; int md_template_size; int /*<<< orphan*/ * md_template; scalar_t__ md_enabled; int /*<<< orphan*/ * md_capture_buff; int /*<<< orphan*/  md_capture_mask; } ;
struct netxen_adapter {TYPE_2__ mdump; TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NX_DUMP_MASK_DEF ; 
 int /*<<< orphan*/  NX_MD_SUPPORT_MAJOR ; 
 int /*<<< orphan*/  NX_MD_SUPPORT_MINOR ; 
 int /*<<< orphan*/  NX_MD_SUPPORT_SUBVERSION ; 
 int NX_RCODE_CMD_INVALID ; 
 int NX_RCODE_CMD_NOT_IMPL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct netxen_adapter*) ; 
 int FUNC6 (struct netxen_adapter*) ; 
 int FUNC7 (struct netxen_adapter*) ; 

int
FUNC8(struct netxen_adapter *adapter)
{
	int err = 0, i;
	u32 *template, *tmp_buf;
	err = FUNC7(adapter);
	if (err) {
		adapter->mdump.fw_supports_md = 0;
		if ((err == NX_RCODE_CMD_INVALID) ||
			(err == NX_RCODE_CMD_NOT_IMPL)) {
			FUNC2(&adapter->pdev->dev,
				"Flashed firmware version does not support minidump, minimum version required is [ %u.%u.%u ]\n",
				NX_MD_SUPPORT_MAJOR, NX_MD_SUPPORT_MINOR,
				NX_MD_SUPPORT_SUBVERSION);
		}
		return err;
	}

	if (!adapter->mdump.md_template_size) {
		FUNC1(&adapter->pdev->dev, "Error : Invalid template size "
		",should be non-zero.\n");
		return -EIO;
	}
	adapter->mdump.md_template =
		FUNC4(adapter->mdump.md_template_size, GFP_KERNEL);

	if (!adapter->mdump.md_template)
		return -ENOMEM;

	err = FUNC6(adapter);
	if (err) {
		if (err == NX_RCODE_CMD_NOT_IMPL)
			adapter->mdump.fw_supports_md = 0;
		goto free_template;
	}

	if (FUNC5(adapter)) {
		FUNC1(&adapter->pdev->dev, "Minidump template checksum Error\n");
		err = -EIO;
		goto free_template;
	}

	adapter->mdump.md_capture_mask = NX_DUMP_MASK_DEF;
	tmp_buf = (u32 *) adapter->mdump.md_template;
	template = (u32 *) adapter->mdump.md_template;
	for (i = 0; i < adapter->mdump.md_template_size/sizeof(u32); i++)
		*template++ = FUNC0(*tmp_buf++);
	adapter->mdump.md_capture_buff = NULL;
	adapter->mdump.fw_supports_md = 1;
	adapter->mdump.md_enabled = 0;

	return err;

free_template:
	FUNC3(adapter->mdump.md_template);
	adapter->mdump.md_template = NULL;
	return err;
}