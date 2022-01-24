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
struct ir_raw_event {int carrier_report; int carrier; int duty_cycle; } ;
struct ene_device {int /*<<< orphan*/  rdev; scalar_t__ carrier_detect_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENE_CIRCAR_HPRD ; 
 int /*<<< orphan*/  ENE_CIRCAR_PRD ; 
 int ENE_CIRCAR_PRD_VALID ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int FUNC1 (struct ene_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ir_raw_event*) ; 

__attribute__((used)) static void FUNC3(struct ene_device *dev)
{
	int carrier, duty_cycle;
	int period = FUNC1(dev, ENE_CIRCAR_PRD);
	int hperiod = FUNC1(dev, ENE_CIRCAR_HPRD);

	if (!(period & ENE_CIRCAR_PRD_VALID))
		return;

	period &= ~ENE_CIRCAR_PRD_VALID;

	if (!period)
		return;

	FUNC0("RX: hardware carrier period = %02x", period);
	FUNC0("RX: hardware carrier pulse period = %02x", hperiod);

	carrier = 2000000 / period;
	duty_cycle = (hperiod * 100) / period;
	FUNC0("RX: sensed carrier = %d Hz, duty cycle %d%%",
						carrier, duty_cycle);
	if (dev->carrier_detect_enabled) {
		struct ir_raw_event ev = {
			.carrier_report = true,
			.carrier = carrier,
			.duty_cycle = duty_cycle
		};
		FUNC2(dev->rdev, &ev);
	}
}