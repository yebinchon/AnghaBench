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
typedef  int u8 ;
struct v4l2_hw_freq_seek {scalar_t__ tuner; scalar_t__ seek_upward; int /*<<< orphan*/  wrap_around; } ;
struct file {int f_flags; } ;
struct amradio_device {int curfreq; int* buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMRADIO_GET_FREQ ; 
 int /*<<< orphan*/  AMRADIO_GET_READY_FLAG ; 
 int /*<<< orphan*/  AMRADIO_SET_SEARCH_DOWN ; 
 int /*<<< orphan*/  AMRADIO_SET_SEARCH_LVL ; 
 int /*<<< orphan*/  AMRADIO_SET_SEARCH_UP ; 
 int /*<<< orphan*/  AMRADIO_STOP_SEARCH ; 
 int EINVAL ; 
 int ENODATA ; 
 int ERESTARTSYS ; 
 int EWOULDBLOCK ; 
 int O_NONBLOCK ; 
 int FUNC0 (struct amradio_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct amradio_device*,int) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 struct amradio_device* FUNC5 (struct file*) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *priv,
		const struct v4l2_hw_freq_seek *seek)
{
	static u8 buf[8] = {
		0x3d, 0x32, 0x0f, 0x08, 0x3d, 0x32, 0x0f, 0x08
	};
	struct amradio_device *radio = FUNC5(file);
	unsigned long timeout;
	int retval;

	if (seek->tuner != 0 || !seek->wrap_around)
		return -EINVAL;

	if (file->f_flags & O_NONBLOCK)
		return -EWOULDBLOCK;

	retval = FUNC0(radio,
			AMRADIO_SET_SEARCH_LVL, 0, buf, 8, false);
	if (retval)
		return retval;
	FUNC1(radio, radio->curfreq);
	retval = FUNC0(radio,
		seek->seek_upward ? AMRADIO_SET_SEARCH_UP : AMRADIO_SET_SEARCH_DOWN,
		0, NULL, 0, false);
	if (retval)
		return retval;
	timeout = jiffies + FUNC2(30000);
	for (;;) {
		if (FUNC4(jiffies, timeout)) {
			retval = -ENODATA;
			break;
		}
		if (FUNC3(FUNC2(10))) {
			retval = -ERESTARTSYS;
			break;
		}
		retval = FUNC0(radio, AMRADIO_GET_READY_FLAG,
				0, NULL, 0, true);
		if (retval)
			continue;
		FUNC0(radio, AMRADIO_GET_FREQ, 0, NULL, 0, true);
		if (radio->buffer[1] || radio->buffer[2]) {
			/* To check: sometimes radio->curfreq is set to out of range value */
			radio->curfreq = (radio->buffer[1] << 8) | radio->buffer[2];
			radio->curfreq = (radio->curfreq - 0x10) * 200;
			FUNC0(radio, AMRADIO_STOP_SEARCH,
					0, NULL, 0, false);
			FUNC1(radio, radio->curfreq);
			retval = 0;
			break;
		}
	}
	FUNC0(radio, AMRADIO_STOP_SEARCH, 0, NULL, 0, false);
	FUNC1(radio, radio->curfreq);
	return retval;
}