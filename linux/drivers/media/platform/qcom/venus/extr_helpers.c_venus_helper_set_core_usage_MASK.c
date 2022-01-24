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
typedef  int /*<<< orphan*/  u32 ;
struct venus_inst {int /*<<< orphan*/  core; } ;
struct hfi_videocores_usage_type {int /*<<< orphan*/  video_core_enable_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  HFI_PROPERTY_CONFIG_VIDEOCORES_USAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct venus_inst*,int /*<<< orphan*/  const,struct hfi_videocores_usage_type*) ; 

int FUNC2(struct venus_inst *inst, u32 usage)
{
	const u32 ptype = HFI_PROPERTY_CONFIG_VIDEOCORES_USAGE;
	struct hfi_videocores_usage_type cu;

	if (!FUNC0(inst->core))
		return 0;

	cu.video_core_enable_mask = usage;

	return FUNC1(inst, ptype, &cu);
}