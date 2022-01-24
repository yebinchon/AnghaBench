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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  DCBX_APP_SF_IEEE ; 
 scalar_t__ DCBX_APP_SF_IEEE_ETHTYPE ; 
 scalar_t__ DCBX_APP_SF_IEEE_RESERVED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(u32 app_info_bitmap)
{
	u8 mfw_val = FUNC0(app_info_bitmap, DCBX_APP_SF_IEEE);

	/* Old MFW */
	if (mfw_val == DCBX_APP_SF_IEEE_RESERVED)
		return FUNC1(app_info_bitmap);

	return !!(mfw_val == DCBX_APP_SF_IEEE_ETHTYPE);
}