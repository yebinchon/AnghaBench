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
struct pwm_device {int dummy; } ;
struct ir_rx51 {int freq; int duty_cycle; struct pwm_device* pwm; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC1 (struct pwm_device*,int,int) ; 

__attribute__((used)) static int FUNC2(struct ir_rx51 *ir_rx51)
{
	struct pwm_device *pwm = ir_rx51->pwm;
	int duty, period = FUNC0(NSEC_PER_SEC, ir_rx51->freq);

	duty = FUNC0(ir_rx51->duty_cycle * period, 100);

	FUNC1(pwm, duty, period);

	return 0;
}