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
struct rc_dev {struct gpio_ir* priv; } ;
struct gpio_ir {int duty_cycle; int /*<<< orphan*/  lock; int /*<<< orphan*/  gpio; int /*<<< orphan*/  carrier; } ;
typedef  int s32 ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 unsigned int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

__attribute__((used)) static int FUNC14(struct rc_dev *dev, unsigned int *txbuf,
		      unsigned int count)
{
	struct gpio_ir *gpio_ir = dev->priv;
	unsigned long flags;
	ktime_t edge;
	/*
	 * delta should never exceed 0.5 seconds (IR_MAX_DURATION) and on
	 * m68k ndelay(s64) does not compile; so use s32 rather than s64.
	 */
	s32 delta;
	int i;
	unsigned int pulse, space;

	/* Ensure the dividend fits into 32 bit */
	pulse = FUNC0(gpio_ir->duty_cycle * (NSEC_PER_SEC / 100),
				  gpio_ir->carrier);
	space = FUNC0((100 - gpio_ir->duty_cycle) *
				  (NSEC_PER_SEC / 100), gpio_ir->carrier);

	FUNC10(&gpio_ir->lock, flags);

	edge = FUNC5();

	for (i = 0; i < count; i++) {
		if (i % 2) {
			// space
			edge = FUNC3(edge, txbuf[i]);
			delta = FUNC8(edge, FUNC5());
			if (delta > 10) {
				FUNC11(&gpio_ir->lock, flags);
				FUNC13(delta, delta + 10);
				FUNC10(&gpio_ir->lock, flags);
			} else if (delta > 0) {
				FUNC12(delta);
			}
		} else {
			// pulse
			ktime_t last = FUNC3(edge, txbuf[i]);

			while (FUNC4(FUNC5(), last)) {
				FUNC1(gpio_ir->gpio, 1);
				edge = FUNC2(edge, pulse);
				delta = FUNC7(FUNC6(edge,
							      FUNC5()));
				if (delta > 0)
					FUNC9(delta);
				FUNC1(gpio_ir->gpio, 0);
				edge = FUNC2(edge, space);
				delta = FUNC7(FUNC6(edge,
							      FUNC5()));
				if (delta > 0)
					FUNC9(delta);
			}

			edge = last;
		}
	}

	FUNC11(&gpio_ir->lock, flags);

	return count;
}