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
struct wl3501_card {int /*<<< orphan*/  bssid; int /*<<< orphan*/  cap_info; } ;
struct wl3501_assoc_req {int timeout; int listen_interval; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  cap_info; int /*<<< orphan*/  sig_id; } ;
typedef  int /*<<< orphan*/  sig ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  WL3501_SIG_ASSOC_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct wl3501_card*,struct wl3501_assoc_req*,int) ; 

__attribute__((used)) static int FUNC3(struct wl3501_card *this)
{
	struct wl3501_assoc_req sig = {
		.sig_id		 = WL3501_SIG_ASSOC_REQ,
		.timeout	 = 1000,
		.listen_interval = 5,
		.cap_info	 = this->cap_info,
	};

	FUNC1("entry");
	FUNC0(sig.mac_addr, this->bssid, ETH_ALEN);
	return FUNC2(this, &sig, sizeof(sig));
}