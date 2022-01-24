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
struct rc_scancode_filter {int /*<<< orphan*/  data; int /*<<< orphan*/  mask; } ;
struct rc_dev {int /*<<< orphan*/  wakeup_protocol; } ;
struct ir_raw_event {int dummy; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ir_raw_event*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC1 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct rc_dev*,struct ir_raw_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct ir_raw_event*) ; 
 struct ir_raw_event* FUNC4 (unsigned int const,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct rc_dev *dev,
				  struct rc_scancode_filter *sc)
{
	static const unsigned int max = 512;
	struct ir_raw_event *raw;
	int ret;
	int i;

	/* fine to disable filter */
	if (!sc->mask)
		return 0;

	/* encode the specified filter and loop it back */
	raw = FUNC4(max, sizeof(*raw), GFP_KERNEL);
	if (!raw)
		return -ENOMEM;

	ret = FUNC0(dev->wakeup_protocol, sc->data, raw, max);
	/* still loop back the partial raw IR even if it's incomplete */
	if (ret == -ENOBUFS)
		ret = max;
	if (ret >= 0) {
		/* do the loopback */
		for (i = 0; i < ret; ++i)
			FUNC2(dev, &raw[i]);
		FUNC1(dev);

		ret = 0;
	}

	FUNC3(raw);

	return ret;
}