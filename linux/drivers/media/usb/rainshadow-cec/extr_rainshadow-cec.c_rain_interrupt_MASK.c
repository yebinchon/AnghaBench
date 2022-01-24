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
struct serio {int dummy; } ;
struct rain {scalar_t__ buf_len; unsigned char* buf; size_t buf_wr_idx; int /*<<< orphan*/  work; int /*<<< orphan*/  buf_lock; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ DATA_SIZE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct rain* FUNC2 (struct serio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(struct serio *serio, unsigned char data,
				    unsigned int flags)
{
	struct rain *rain = FUNC2(serio);

	if (rain->buf_len == DATA_SIZE) {
		FUNC0(rain->dev, "buffer overflow\n");
		return IRQ_HANDLED;
	}
	FUNC3(&rain->buf_lock);
	rain->buf_len++;
	rain->buf[rain->buf_wr_idx] = data;
	rain->buf_wr_idx = (rain->buf_wr_idx + 1) & 0xff;
	FUNC4(&rain->buf_lock);
	FUNC1(&rain->work);
	return IRQ_HANDLED;
}