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
struct r8152 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPM_U1U2_EN ; 
 int /*<<< orphan*/  MCU_TYPE_USB ; 
 int /*<<< orphan*/  USB_LPM_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct r8152 *tp, bool enable)
{
	u32 ocp_data;

	ocp_data = FUNC0(tp, MCU_TYPE_USB, USB_LPM_CONFIG);
	if (enable)
		ocp_data |= LPM_U1U2_EN;
	else
		ocp_data &= ~LPM_U1U2_EN;

	FUNC1(tp, MCU_TYPE_USB, USB_LPM_CONFIG, ocp_data);
}