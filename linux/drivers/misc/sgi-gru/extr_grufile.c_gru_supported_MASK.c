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
struct TYPE_2__ {scalar_t__ hub_revision; } ;

/* Variables and functions */
 scalar_t__ UV3_HUB_REVISION_BASE ; 
 scalar_t__ FUNC0 () ; 
 TYPE_1__* uv_hub_info ; 

__attribute__((used)) static int FUNC1(void)
{
	return FUNC0() &&
		(uv_hub_info->hub_revision < UV3_HUB_REVISION_BASE);
}