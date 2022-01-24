#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mantis_uart_params {size_t baud_rate; size_t parity; } ;
struct mantis_pci {int /*<<< orphan*/  uart_work; struct mantis_hwconfig* hwconfig; } ;
struct mantis_hwconfig {size_t baud_rate; size_t parity; int bytes; } ;
struct TYPE_4__ {int /*<<< orphan*/  string; } ;
struct TYPE_3__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MANTIS_DEBUG ; 
 int /*<<< orphan*/  MANTIS_INFO ; 
 int /*<<< orphan*/  MANTIS_INT_IRQ1 ; 
 int /*<<< orphan*/  MANTIS_UART_BAUD ; 
 int /*<<< orphan*/  MANTIS_UART_CTL ; 
 int MANTIS_UART_RXFLUSH ; 
 int MANTIS_UART_RXINT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct mantis_pci*,struct mantis_uart_params*) ; 
 int /*<<< orphan*/  mantis_uart_work ; 
 int /*<<< orphan*/  FUNC3 (struct mantis_pci*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__* parity ; 
 TYPE_1__* rates ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct mantis_pci *mantis)
{
	struct mantis_hwconfig *config = mantis->hwconfig;
	struct mantis_uart_params params;

	/* default parity: */
	params.baud_rate = config->baud_rate;
	params.parity = config->parity;
	FUNC1(MANTIS_INFO, 1, "Initializing UART @ %sbps parity:%s",
		rates[params.baud_rate].string,
		parity[params.parity].string);

	FUNC0(&mantis->uart_work, mantis_uart_work);

	/* disable interrupt */
	FUNC5(FUNC4(MANTIS_UART_CTL) & 0xffef, MANTIS_UART_CTL);

	FUNC2(mantis, &params);

	/* default 1 byte */
	FUNC5((FUNC4(MANTIS_UART_BAUD) | (config->bytes << 8)), MANTIS_UART_BAUD);

	/* flush buffer */
	FUNC5((FUNC4(MANTIS_UART_CTL) | MANTIS_UART_RXFLUSH), MANTIS_UART_CTL);

	/* enable interrupt */
	FUNC5(FUNC4(MANTIS_UART_CTL) | MANTIS_UART_RXINT, MANTIS_UART_CTL);
	FUNC3(mantis, MANTIS_INT_IRQ1);

	FUNC6(&mantis->uart_work);
	FUNC1(MANTIS_DEBUG, 1, "UART successfully initialized");

	return 0;
}