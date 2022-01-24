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
struct i2400m {int updown; int alive; int /*<<< orphan*/  init_mutex; } ;
typedef  enum i2400m_bri { ____Placeholder_i2400m_bri } i2400m_bri ;

/* Variables and functions */
 int FUNC0 (struct i2400m*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static
int FUNC4(struct i2400m *i2400m, enum i2400m_bri bm_flags)
{
	int result = 0;
	FUNC1(&i2400m->init_mutex);	/* Well, start the device */
	if (i2400m->updown == 0) {
		result = FUNC0(i2400m, bm_flags);
		if (result >= 0) {
			i2400m->updown = 1;
			i2400m->alive = 1;
			FUNC3();/* see i2400m->updown and i2400m->alive's doc */
		}
	}
	FUNC2(&i2400m->init_mutex);
	return result;
}