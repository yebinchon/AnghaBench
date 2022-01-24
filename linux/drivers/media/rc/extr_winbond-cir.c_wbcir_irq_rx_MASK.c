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
typedef  int u8 ;
struct wbcir_data {scalar_t__ rxstate; unsigned int pulse_duration; int /*<<< orphan*/  dev; scalar_t__ carrier_report_enabled; scalar_t__ sbase; } ;
struct pnp_dev {int dummy; } ;
struct ir_raw_event {int pulse; int /*<<< orphan*/  duration; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ WBCIR_REG_SP3_LSR ; 
 scalar_t__ WBCIR_REG_SP3_RXDATA ; 
 scalar_t__ WBCIR_RXSTATE_ERROR ; 
 int WBCIR_RX_AVAIL ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ir_raw_event*) ; 

__attribute__((used)) static void
FUNC4(struct wbcir_data *data, struct pnp_dev *device)
{
	u8 irdata;
	struct ir_raw_event rawir = {};
	unsigned duration;

	/* Since RXHDLEV is set, at least 8 bytes are in the FIFO */
	while (FUNC1(data->sbase + WBCIR_REG_SP3_LSR) & WBCIR_RX_AVAIL) {
		irdata = FUNC1(data->sbase + WBCIR_REG_SP3_RXDATA);
		if (data->rxstate == WBCIR_RXSTATE_ERROR)
			continue;

		duration = ((irdata & 0x7F) + 1) *
			(data->carrier_report_enabled ? 2 : 10);
		rawir.pulse = irdata & 0x80 ? false : true;
		rawir.duration = FUNC0(duration);

		if (rawir.pulse)
			data->pulse_duration += duration;

		FUNC3(data->dev, &rawir);
	}

	FUNC2(data->dev);
}