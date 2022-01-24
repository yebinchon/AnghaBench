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
typedef  int /*<<< orphan*/  u16 ;
struct wmi_p2p_capabilities_event {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_WMI ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(u8 *datap, int len)
{
	struct wmi_p2p_capabilities_event *ev;
	u16 dlen;

	if (len < sizeof(*ev))
		return -EINVAL;

	ev = (struct wmi_p2p_capabilities_event *) datap;
	dlen = FUNC1(ev->len);
	FUNC0(ATH6KL_DBG_WMI, "p2p_capab: len=%u\n", dlen);

	return 0;
}