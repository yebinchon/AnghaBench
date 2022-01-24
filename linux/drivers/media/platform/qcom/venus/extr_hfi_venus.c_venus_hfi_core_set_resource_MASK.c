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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct venus_hfi_device {int dummy; } ;
struct venus_core {int dummy; } ;
struct hfi_sys_set_resource_pkt {int dummy; } ;

/* Variables and functions */
 int IFACEQ_VAR_SMALL_PKT_SIZE ; 
 int /*<<< orphan*/  VIDC_RESOURCE_NONE ; 
 int FUNC0 (struct hfi_sys_set_resource_pkt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 struct venus_hfi_device* FUNC1 (struct venus_core*) ; 
 int FUNC2 (struct venus_hfi_device*,struct hfi_sys_set_resource_pkt*) ; 

__attribute__((used)) static int FUNC3(struct venus_core *core, u32 id,
				       u32 size, u32 addr, void *cookie)
{
	struct venus_hfi_device *hdev = FUNC1(core);
	struct hfi_sys_set_resource_pkt *pkt;
	u8 packet[IFACEQ_VAR_SMALL_PKT_SIZE];
	int ret;

	if (id == VIDC_RESOURCE_NONE)
		return 0;

	pkt = (struct hfi_sys_set_resource_pkt *)packet;

	ret = FUNC0(pkt, id, size, addr, cookie);
	if (ret)
		return ret;

	ret = FUNC2(hdev, pkt);
	if (ret)
		return ret;

	return 0;
}