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
struct TYPE_2__ {int mib_status; int /*<<< orphan*/  mib_value; } ;
struct wl3501_card {TYPE_1__ sig_get_confirm; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct wl3501_card*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC3(struct wl3501_card *this, u8 index,
				void *bf, int size)
{
	int rc;

	rc = FUNC2(this, index, bf);
	if (rc)
		return rc;

	rc = FUNC1(this->wait,
		this->sig_get_confirm.mib_status != 255);
	if (rc)
		return rc;

	FUNC0(bf, this->sig_get_confirm.mib_value, size);
	return 0;
}