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
struct wl3501_card {int /*<<< orphan*/  bssid; } ;
struct wl3501_auth_req {int timeout; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  type; int /*<<< orphan*/  sig_id; } ;
typedef  int /*<<< orphan*/  sig ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  WL3501_SIG_AUTH_REQ ; 
 int /*<<< orphan*/  WL3501_SYS_TYPE_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct wl3501_card*,struct wl3501_auth_req*,int) ; 

__attribute__((used)) static int FUNC3(struct wl3501_card *this)
{
	struct wl3501_auth_req sig = {
		.sig_id	 = WL3501_SIG_AUTH_REQ,
		.type	 = WL3501_SYS_TYPE_OPEN,
		.timeout = 1000,
	};

	FUNC1("entry");
	FUNC0(sig.mac_addr, this->bssid, ETH_ALEN);
	return FUNC2(this, &sig, sizeof(sig));
}