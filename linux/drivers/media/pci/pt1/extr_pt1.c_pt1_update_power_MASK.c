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
struct pt1_adapter {int voltage; } ;
struct pt1 {int power; int /*<<< orphan*/  lock; struct pt1_adapter** adaps; int /*<<< orphan*/  reset; } ;

/* Variables and functions */
 int PT1_NR_ADAPS ; 
#define  SEC_VOLTAGE_13 129 
#define  SEC_VOLTAGE_18 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pt1*,int,int) ; 

__attribute__((used)) static void
FUNC3(struct pt1 *pt1)
{
	int bits;
	int i;
	struct pt1_adapter *adap;
	static const int sleep_bits[] = {
		1 << 4,
		1 << 6 | 1 << 7,
		1 << 5,
		1 << 6 | 1 << 8,
	};

	bits = pt1->power | !pt1->reset << 3;
	FUNC0(&pt1->lock);
	for (i = 0; i < PT1_NR_ADAPS; i++) {
		adap = pt1->adaps[i];
		switch (adap->voltage) {
		case SEC_VOLTAGE_13: /* actually 11V */
			bits |= 1 << 2;
			break;
		case SEC_VOLTAGE_18: /* actually 15V */
			bits |= 1 << 1 | 1 << 2;
			break;
		default:
			break;
		}

		/* XXX: The bits should be changed depending on adap->sleep. */
		bits |= sleep_bits[i];
	}
	FUNC2(pt1, 1, bits);
	FUNC1(&pt1->lock);
}