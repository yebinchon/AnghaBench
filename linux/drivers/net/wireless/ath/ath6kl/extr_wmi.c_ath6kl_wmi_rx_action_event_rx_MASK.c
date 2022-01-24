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
typedef  int u16 ;
struct wmi_rx_action_event {int /*<<< orphan*/ * data; int /*<<< orphan*/  len; int /*<<< orphan*/  freq; } ;
struct wmi {int dummy; } ;
struct ath6kl_vif {int /*<<< orphan*/  wdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_WMI ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct wmi *wmi, u8 *datap, int len,
					 struct ath6kl_vif *vif)
{
	struct wmi_rx_action_event *ev;
	u32 freq;
	u16 dlen;

	if (len < sizeof(*ev))
		return -EINVAL;

	ev = (struct wmi_rx_action_event *) datap;
	freq = FUNC4(ev->freq);
	dlen = FUNC3(ev->len);
	if (datap + len < ev->data + dlen) {
		FUNC1("invalid wmi_rx_action_event: len=%d dlen=%u\n",
			   len, dlen);
		return -EINVAL;
	}
	FUNC0(ATH6KL_DBG_WMI, "rx_action: len=%u freq=%u\n", dlen, freq);
	FUNC2(&vif->wdev, freq, 0, ev->data, dlen, 0);

	return 0;
}