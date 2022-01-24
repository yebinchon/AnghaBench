#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct meson_host {TYPE_1__* data; scalar_t__ regs; } ;
struct TYPE_2__ {scalar_t__ adjust; } ;

/* Variables and functions */
 unsigned int ADJUST_ADJ_DELAY_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct meson_host*) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct meson_host *host)
{
	unsigned int val;

	FUNC0(host);

	val = FUNC1(host->regs + host->data->adjust);
	val &= ~ADJUST_ADJ_DELAY_MASK;
	FUNC2(val, host->regs + host->data->adjust);
}