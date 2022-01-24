#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ regs; } ;
typedef  TYPE_1__ adapter_t ;

/* Variables and functions */
 scalar_t__ A_ESPI_CALENDAR_LENGTH ; 
 scalar_t__ A_ESPI_RX_FIFO_ALMOST_EMPTY_WATERMARK ; 
 scalar_t__ A_ESPI_RX_FIFO_ALMOST_FULL_WATERMARK ; 
 scalar_t__ A_PORT_CONFIG ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(adapter_t *adapter, int nports)
{
	FUNC3(1, adapter->regs + A_ESPI_CALENDAR_LENGTH);
	if (nports == 4) {
		if (FUNC2(adapter)) {
			FUNC3(0xf00, adapter->regs + A_ESPI_RX_FIFO_ALMOST_FULL_WATERMARK);
			FUNC3(0x3c0, adapter->regs + A_ESPI_RX_FIFO_ALMOST_EMPTY_WATERMARK);
		} else {
			FUNC3(0x7ff, adapter->regs + A_ESPI_RX_FIFO_ALMOST_FULL_WATERMARK);
			FUNC3(0x1ff, adapter->regs + A_ESPI_RX_FIFO_ALMOST_EMPTY_WATERMARK);
		}
	} else {
		FUNC3(0x1fff, adapter->regs + A_ESPI_RX_FIFO_ALMOST_FULL_WATERMARK);
		FUNC3(0x7ff, adapter->regs + A_ESPI_RX_FIFO_ALMOST_EMPTY_WATERMARK);
	}
	FUNC3(FUNC0(nports) | FUNC1(nports), adapter->regs + A_PORT_CONFIG);

}