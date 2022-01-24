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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  sample_period; } ;
struct ite_dev {int /*<<< orphan*/  rdev; TYPE_1__ params; } ;
struct ir_raw_event {int pulse; void* duration; } ;

/* Variables and functions */
 void* FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned long*,unsigned int,unsigned int) ; 
 unsigned int FUNC2 (unsigned long*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ir_raw_event*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static void FUNC6(struct ite_dev *dev, const u8 * data, int
			     length)
{
	u32 sample_period;
	unsigned long *ldata;
	unsigned int next_one, next_zero, size;
	struct ir_raw_event ev = {};

	if (length == 0)
		return;

	sample_period = dev->params.sample_period;
	ldata = (unsigned long *)data;
	size = length << 3;
	next_one = FUNC1(ldata, size, 0);
	if (next_one > 0) {
		ev.pulse = true;
		ev.duration =
		    FUNC0(next_one, sample_period);
		FUNC4(dev->rdev, &ev);
	}

	while (next_one < size) {
		next_zero = FUNC2(ldata, size, next_one + 1);
		ev.pulse = false;
		ev.duration = FUNC0(next_zero - next_one, sample_period);
		FUNC4(dev->rdev, &ev);

		if (next_zero < size) {
			next_one =
			    FUNC1(ldata,
						     size,
						     next_zero + 1);
			ev.pulse = true;
			ev.duration =
			    FUNC0(next_one - next_zero,
					   sample_period);
			FUNC4
			    (dev->rdev, &ev);
		} else
			next_one = size;
	}

	FUNC3(dev->rdev);

	FUNC5("decoded %d bytes.", length);
}