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
struct rc_dev {struct pwm_ir* priv; } ;
struct pwm_ir {int carrier; int duty_cycle; struct pwm_device* pwm; } ;
struct pwm_device {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 long FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pwm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pwm_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct pwm_device*) ; 
 int /*<<< orphan*/  FUNC7 (long,long) ; 

__attribute__((used)) static int FUNC8(struct rc_dev *dev, unsigned int *txbuf,
		     unsigned int count)
{
	struct pwm_ir *pwm_ir = dev->priv;
	struct pwm_device *pwm = pwm_ir->pwm;
	int i, duty, period;
	ktime_t edge;
	long delta;

	period = FUNC0(NSEC_PER_SEC, pwm_ir->carrier);
	duty = FUNC0(pwm_ir->duty_cycle * period, 100);

	FUNC4(pwm, duty, period);

	edge = FUNC2();

	for (i = 0; i < count; i++) {
		if (i % 2) // space
			FUNC5(pwm);
		else
			FUNC6(pwm);

		edge = FUNC1(edge, txbuf[i]);
		delta = FUNC3(edge, FUNC2());
		if (delta > 0)
			FUNC7(delta, delta + 10);
	}

	FUNC5(pwm);

	return count;
}