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

/* Variables and functions */
 int /*<<< orphan*/  SFE4003_LED_OFF ; 
 int /*<<< orphan*/  SFE4003_RED_LED_GPIO ; 
 int /*<<< orphan*/  TXC_GPIO_DIR_OUTPUT ; 
 struct falcon_board* FUNC0 (struct ef4_nic*) ; 
 int /*<<< orphan*/  FUNC1 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ef4_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ef4_nic *efx)
{
	struct falcon_board *board = FUNC0(efx);

	/* The LEDs were not wired to GPIOs before A3 */
	if (board->minor < 3 && board->major == 0)
		return;

	FUNC1(efx, SFE4003_RED_LED_GPIO, TXC_GPIO_DIR_OUTPUT);
	FUNC2(efx, SFE4003_RED_LED_GPIO, SFE4003_LED_OFF);
}