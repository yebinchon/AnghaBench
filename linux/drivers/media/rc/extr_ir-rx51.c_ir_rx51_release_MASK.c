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
struct ir_rx51 {int /*<<< orphan*/  device_is_open; int /*<<< orphan*/  pwm; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ir_rx51*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct rc_dev *dev)
{
	struct ir_rx51 *ir_rx51 = dev->priv;

	FUNC1(&ir_rx51->timer);
	FUNC2(ir_rx51);
	FUNC3(ir_rx51->pwm);

	FUNC0(1, &ir_rx51->device_is_open);
}