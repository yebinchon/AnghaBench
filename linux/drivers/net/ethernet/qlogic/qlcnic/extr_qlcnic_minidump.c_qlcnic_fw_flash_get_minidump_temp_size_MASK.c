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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  tmp_hdr ;
struct TYPE_2__ {int /*<<< orphan*/ * arg; } ;
struct qlcnic_cmd_args {TYPE_1__ rsp; } ;
struct qlcnic_adapter {int dummy; } ;
struct qlcnic_83xx_dump_template_hdr {int /*<<< orphan*/  version; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  QLC_83XX_MINIDUMP_FLASH ; 
 scalar_t__ FUNC0 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*) ; 
 int FUNC2 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int
FUNC4(struct qlcnic_adapter *adapter,
				       struct qlcnic_cmd_args *cmd)
{
	struct qlcnic_83xx_dump_template_hdr tmp_hdr;
	u32 size = sizeof(tmp_hdr) / sizeof(u32);
	int ret = 0;

	if (FUNC0(adapter))
		return -EIO;

	if (FUNC1(adapter))
		return -EIO;

	ret = FUNC2(adapter,
						QLC_83XX_MINIDUMP_FLASH,
						(u8 *)&tmp_hdr, size);

	FUNC3(adapter);

	cmd->rsp.arg[2] = tmp_hdr.size;
	cmd->rsp.arg[3] = tmp_hdr.version;

	return ret;
}