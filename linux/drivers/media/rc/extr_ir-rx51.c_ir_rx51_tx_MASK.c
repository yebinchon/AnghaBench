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
struct rc_dev {struct ir_rx51* priv; } ;
struct ir_rx51 {int* wbuf; int wbuf_index; int /*<<< orphan*/  wqueue; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int WBUF_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ir_rx51*) ; 
 int /*<<< orphan*/  FUNC3 (struct ir_rx51*) ; 
 int /*<<< orphan*/  FUNC4 (int*,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct rc_dev *dev, unsigned int *buffer,
		      unsigned int count)
{
	struct ir_rx51 *ir_rx51 = dev->priv;

	if (count > WBUF_LEN)
		return -EINVAL;

	FUNC4(ir_rx51->wbuf, buffer, count * sizeof(unsigned int));

	/* Wait any pending transfers to finish */
	FUNC6(ir_rx51->wqueue, ir_rx51->wbuf_index < 0);

	FUNC2(ir_rx51);
	if (count < WBUF_LEN)
		ir_rx51->wbuf[count] = -1; /* Insert termination mark */

	/*
	 * REVISIT: Adjust latency requirements so the device doesn't go in too
	 * deep sleep states with pm_qos_add_request().
	 */

	FUNC3(ir_rx51);
	ir_rx51->wbuf_index = 1;
	FUNC1(&ir_rx51->timer,
		      FUNC5(FUNC0(ir_rx51->wbuf[0])),
		      HRTIMER_MODE_REL);
	/*
	 * Don't return back to the userspace until the transfer has
	 * finished
	 */
	FUNC6(ir_rx51->wqueue, ir_rx51->wbuf_index < 0);

	/* REVISIT: Remove pm_qos constraint, we can sleep again */

	return count;
}