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
typedef  int u32 ;
struct wmi_bit_rate_reply {int rate_index; } ;
struct wmi {int /*<<< orphan*/  parent_dev; } ;
typedef  int s8 ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_WMI ; 
 int EINVAL ; 
 scalar_t__ RATE_AUTO ; 
 int RATE_MCS_7_40 ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__** wmi_rate_tbl ; 

__attribute__((used)) static int FUNC3(struct wmi *wmi, u8 *datap, int len)
{
	struct wmi_bit_rate_reply *reply;
	s32 rate;
	u32 sgi, index;

	if (len < sizeof(struct wmi_bit_rate_reply))
		return -EINVAL;

	reply = (struct wmi_bit_rate_reply *) datap;

	FUNC1(ATH6KL_DBG_WMI, "rateindex %d\n", reply->rate_index);

	if (reply->rate_index == (s8) RATE_AUTO) {
		rate = RATE_AUTO;
	} else {
		index = reply->rate_index & 0x7f;
		if (FUNC0(index > (RATE_MCS_7_40 + 1)))
			return -EINVAL;

		sgi = (reply->rate_index & 0x80) ? 1 : 0;
		rate = wmi_rate_tbl[index][sgi];
	}

	FUNC2(wmi->parent_dev);

	return 0;
}