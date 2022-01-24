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
struct TYPE_2__ {int uart_pin; scalar_t__ uart_pin_workaround; } ;
struct ath10k {TYPE_1__ hw_params; } ;

/* Variables and functions */
 int FUNC0 (struct ath10k*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int) ; 
 int /*<<< orphan*/  hi_dbg_uart_txpin ; 
 int /*<<< orphan*/  hi_desired_baud_rate ; 
 int /*<<< orphan*/  hi_serial_enable ; 
 int /*<<< orphan*/  uart_print ; 

__attribute__((used)) static int FUNC3(struct ath10k *ar)
{
	int ret;

	/*
	 * Explicitly setting UART prints to zero as target turns it on
	 * based on scratch registers.
	 */
	ret = FUNC0(ar, hi_serial_enable, 0);
	if (ret) {
		FUNC2(ar, "could not disable UART prints (%d)\n", ret);
		return ret;
	}

	if (!uart_print) {
		if (ar->hw_params.uart_pin_workaround) {
			ret = FUNC0(ar, hi_dbg_uart_txpin,
						 ar->hw_params.uart_pin);
			if (ret) {
				FUNC2(ar, "failed to set UART TX pin: %d",
					    ret);
				return ret;
			}
		}

		return 0;
	}

	ret = FUNC0(ar, hi_dbg_uart_txpin, ar->hw_params.uart_pin);
	if (ret) {
		FUNC2(ar, "could not enable UART prints (%d)\n", ret);
		return ret;
	}

	ret = FUNC0(ar, hi_serial_enable, 1);
	if (ret) {
		FUNC2(ar, "could not enable UART prints (%d)\n", ret);
		return ret;
	}

	/* Set the UART baud rate to 19200. */
	ret = FUNC0(ar, hi_desired_baud_rate, 19200);
	if (ret) {
		FUNC2(ar, "could not set the baud rate (%d)\n", ret);
		return ret;
	}

	FUNC1(ar, "UART prints enabled\n");
	return 0;
}