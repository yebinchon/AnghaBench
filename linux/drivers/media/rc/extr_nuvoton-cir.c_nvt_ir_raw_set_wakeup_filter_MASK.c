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
typedef  unsigned int u8 ;
struct rc_scancode_filter {int /*<<< orphan*/  data; int /*<<< orphan*/  mask; } ;
struct rc_dev {int /*<<< orphan*/  wakeup_protocol; } ;
struct ir_raw_event {scalar_t__ pulse; int /*<<< orphan*/  duration; } ;

/* Variables and functions */
 unsigned int BUF_LEN_MASK ; 
 unsigned int BUF_PULSE_BIT ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,long) ; 
 int ENOBUFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int SAMPLE_PERIOD ; 
 int WAKEUP_MAX_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ir_raw_event*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ir_raw_event*) ; 
 struct ir_raw_event* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rc_dev*,unsigned int*,int) ; 

__attribute__((used)) static int FUNC5(struct rc_dev *dev,
					struct rc_scancode_filter *sc_filter)
{
	u8 buf_val;
	int i, ret, count;
	unsigned int val;
	struct ir_raw_event *raw;
	u8 wake_buf[WAKEUP_MAX_SIZE];
	bool complete;

	/* Require mask to be set */
	if (!sc_filter->mask)
		return 0;

	raw = FUNC3(WAKEUP_MAX_SIZE, sizeof(*raw), GFP_KERNEL);
	if (!raw)
		return -ENOMEM;

	ret = FUNC1(dev->wakeup_protocol, sc_filter->data,
				     raw, WAKEUP_MAX_SIZE);
	complete = (ret != -ENOBUFS);
	if (!complete)
		ret = WAKEUP_MAX_SIZE;
	else if (ret < 0)
		goto out_raw;

	/* Inspect the ir samples */
	for (i = 0, count = 0; i < ret && count < WAKEUP_MAX_SIZE; ++i) {
		/* NS to US */
		val = FUNC0(raw[i].duration, 1000L) / SAMPLE_PERIOD;

		/* Split too large values into several smaller ones */
		while (val > 0 && count < WAKEUP_MAX_SIZE) {
			/* Skip last value for better comparison tolerance */
			if (complete && i == ret - 1 && val < BUF_LEN_MASK)
				break;

			/* Clamp values to BUF_LEN_MASK at most */
			buf_val = (val > BUF_LEN_MASK) ? BUF_LEN_MASK : val;

			wake_buf[count] = buf_val;
			val -= buf_val;
			if ((raw[i]).pulse)
				wake_buf[count] |= BUF_PULSE_BIT;
			count++;
		}
	}

	FUNC4(dev, wake_buf, count);
	ret = 0;
out_raw:
	FUNC2(raw);

	return ret;
}