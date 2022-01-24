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
struct meson_nfc {int /*<<< orphan*/  core_clk; int /*<<< orphan*/  device_clk; int /*<<< orphan*/  phase_tx; int /*<<< orphan*/  phase_rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct meson_nfc *nfc)
{
	FUNC0(nfc->phase_rx);
	FUNC0(nfc->phase_tx);
	FUNC0(nfc->device_clk);
	FUNC0(nfc->core_clk);
}