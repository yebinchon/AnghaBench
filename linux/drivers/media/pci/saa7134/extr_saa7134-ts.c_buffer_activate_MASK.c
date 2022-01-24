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
struct TYPE_2__ {int /*<<< orphan*/  timeout; } ;
struct saa7134_dev {scalar_t__ ts_field; int /*<<< orphan*/  ts_started; TYPE_1__ ts_q; } ;
struct saa7134_buf {scalar_t__ top_seen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ TS_BUFFER_TIMEOUT ; 
 scalar_t__ V4L2_FIELD_BOTTOM ; 
 scalar_t__ V4L2_FIELD_TOP ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct saa7134_buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct saa7134_buf*,...) ; 

__attribute__((used)) static int FUNC8(struct saa7134_dev *dev,
			   struct saa7134_buf *buf,
			   struct saa7134_buf *next)
{

	FUNC7("buffer_activate [%p]", buf);
	buf->top_seen = 0;

	if (!dev->ts_started)
		dev->ts_field = V4L2_FIELD_TOP;

	if (NULL == next)
		next = buf;
	if (V4L2_FIELD_TOP == dev->ts_field) {
		FUNC7("- [top]     buf=%p next=%p\n", buf, next);
		FUNC6(FUNC0(5),FUNC3(buf));
		FUNC6(FUNC1(5),FUNC3(next));
		dev->ts_field = V4L2_FIELD_BOTTOM;
	} else {
		FUNC7("- [bottom]  buf=%p next=%p\n", buf, next);
		FUNC6(FUNC0(5),FUNC3(next));
		FUNC6(FUNC1(5),FUNC3(buf));
		dev->ts_field = V4L2_FIELD_TOP;
	}

	/* start DMA */
	FUNC4(dev);

	FUNC2(&dev->ts_q.timeout, jiffies+TS_BUFFER_TIMEOUT);

	if (!dev->ts_started)
		FUNC5(dev);

	return 0;
}