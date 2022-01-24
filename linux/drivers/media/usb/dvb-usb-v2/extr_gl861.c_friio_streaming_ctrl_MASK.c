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
typedef  int /*<<< orphan*/  u32 ;
struct dvb_frontend {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FRIIO_LED_RUNNING ; 
 int /*<<< orphan*/  FRIIO_LED_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_frontend*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe, int onoff)
{
	u32 led_color;

	led_color = onoff ? FRIIO_LED_RUNNING : FRIIO_LED_STOPPED;
	return FUNC1(FUNC0(fe), led_color, true);
}