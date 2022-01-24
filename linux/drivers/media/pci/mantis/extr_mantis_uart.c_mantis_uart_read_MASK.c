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
struct mantis_pci {struct mantis_hwconfig* hwconfig; } ;
struct mantis_hwconfig {int bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANTIS_DEBUG ; 
 int /*<<< orphan*/  MANTIS_ERROR ; 
 int /*<<< orphan*/  MANTIS_UART_RXD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct mantis_pci*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mantis_pci *mantis)
{
	struct mantis_hwconfig *config = mantis->hwconfig;
	int i, scancode = 0, err = 0;

	/* get data */
	FUNC0(MANTIS_DEBUG, 1, "UART Reading ...");
	for (i = 0; i < (config->bytes + 1); i++) {
		int data = FUNC2(MANTIS_UART_RXD);

		FUNC0(MANTIS_DEBUG, 0, " <%02x>", data);

		scancode = (scancode << 8) | (data & 0x3f);
		err |= data;

		if (data & (1 << 7))
			FUNC0(MANTIS_ERROR, 1, "UART framing error");

		if (data & (1 << 6))
			FUNC0(MANTIS_ERROR, 1, "UART parity error");
	}
	FUNC0(MANTIS_DEBUG, 0, "\n");

	if ((err & 0xC0) == 0)
		FUNC1(mantis, scancode);
}