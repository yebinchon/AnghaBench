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
typedef  scalar_t__ u16 ;
struct wl3501_card {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct wl3501_card*,scalar_t__*) ; 
 scalar_t__ FUNC1 (struct wl3501_card*) ; 
 scalar_t__ FUNC2 (struct wl3501_card*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wl3501_card*,scalar_t__,void*,int) ; 

__attribute__((used)) static int FUNC4(struct wl3501_card *this, void *sig, int sig_size)
{
	int rc = -EIO;

	if (FUNC1(this)) {
		u16 ptr = FUNC2(this, sig_size);
		if (ptr) {
			FUNC3(this, ptr, sig, sig_size);
			FUNC0(this, &ptr);
			rc = 0;
		}
	}
	return rc;
}