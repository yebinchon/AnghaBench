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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct wl3501_get_req {int /*<<< orphan*/  mib_attrib; int /*<<< orphan*/  sig_id; } ;
struct TYPE_2__ {int mib_status; } ;
struct wl3501_card {int /*<<< orphan*/  lock; TYPE_1__ sig_get_confirm; } ;
typedef  int /*<<< orphan*/  sig ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  WL3501_SIG_GET_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct wl3501_card*,scalar_t__*) ; 
 scalar_t__ FUNC3 (struct wl3501_card*) ; 
 scalar_t__ FUNC4 (struct wl3501_card*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wl3501_card*,scalar_t__,struct wl3501_get_req*,int) ; 

__attribute__((used)) static int FUNC6(struct wl3501_card *this, u8 index, void *bf)
{
	struct wl3501_get_req sig = {
		.sig_id	    = WL3501_SIG_GET_REQ,
		.mib_attrib = index,
	};
	unsigned long flags;
	int rc = -EIO;

	FUNC0(&this->lock, flags);
	if (FUNC3(this)) {
		u16 ptr = FUNC4(this, sizeof(sig));
		if (ptr) {
			FUNC5(this, ptr, &sig, sizeof(sig));
			FUNC2(this, &ptr);
			this->sig_get_confirm.mib_status = 255;
			rc = 0;
		}
	}
	FUNC1(&this->lock, flags);

	return rc;
}