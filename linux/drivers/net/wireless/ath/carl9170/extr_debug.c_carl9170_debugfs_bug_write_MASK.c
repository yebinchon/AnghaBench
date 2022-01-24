#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ar9170 {int needs_full_reset; TYPE_2__* hw; } ;
typedef  size_t ssize_t ;
struct TYPE_6__ {int /*<<< orphan*/  chan; } ;
struct TYPE_4__ {TYPE_3__ chandef; } ;
struct TYPE_5__ {TYPE_1__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARL9170_RR_USER_REQUEST ; 
 int EAGAIN ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ar9170*) ; 
 int FUNC1 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC2 (struct ar9170*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ar9170*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static ssize_t FUNC5(struct ar9170 *ar, const char *buf,
					  size_t count)
{
	int err;

	if (count < 1)
		return -EINVAL;

	switch (buf[0]) {
	case 'F':
		ar->needs_full_reset = true;
		break;

	case 'R':
		if (!FUNC0(ar)) {
			err = -EAGAIN;
			goto out;
		}

		ar->needs_full_reset = false;
		break;

	case 'M':
		err = FUNC1(ar);
		if (err < 0)
			count = err;

		goto out;

	case 'P':
		err = FUNC3(ar, ar->hw->conf.chandef.chan,
			FUNC4(&ar->hw->conf.chandef));
		if (err < 0)
			count = err;

		goto out;

	default:
		return -EINVAL;
	}

	FUNC2(ar, CARL9170_RR_USER_REQUEST);

out:
	return count;
}