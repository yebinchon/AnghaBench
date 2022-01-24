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
struct falcon_board {int minor; scalar_t__ major; } ;
struct ef4_nic {int dummy; } ;
typedef  enum ef4_led_mode { ____Placeholder_ef4_led_mode } ef4_led_mode ;

/* Variables and functions */
 int EF4_LED_ON ; 
 int /*<<< orphan*/  SFE4003_LED_OFF ; 
 int /*<<< orphan*/  SFE4003_LED_ON ; 
 int /*<<< orphan*/  SFE4003_RED_LED_GPIO ; 
 struct falcon_board* FUNC0 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ef4_nic *efx, enum ef4_led_mode mode)
{
	struct falcon_board *board = FUNC0(efx);

	/* The LEDs were not wired to GPIOs before A3 */
	if (board->minor < 3 && board->major == 0)
		return;

	FUNC1(
		efx, SFE4003_RED_LED_GPIO,
		(mode == EF4_LED_ON) ? SFE4003_LED_ON : SFE4003_LED_OFF);
}