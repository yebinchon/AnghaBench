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
typedef  int u32 ;
struct mantis_uart_params {int parity; int baud_rate; } ;
struct mantis_pci {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
#define  MANTIS_BAUD_115200 132 
#define  MANTIS_BAUD_19200 131 
#define  MANTIS_BAUD_38400 130 
#define  MANTIS_BAUD_57600 129 
#define  MANTIS_BAUD_9600 128 
 int /*<<< orphan*/  MANTIS_UART_BAUD ; 
 int /*<<< orphan*/  MANTIS_UART_CTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mantis_pci *mantis,
			     struct mantis_uart_params *params)
{
	u32 reg;

	FUNC1((FUNC0(MANTIS_UART_CTL) | (params->parity & 0x3)), MANTIS_UART_CTL);

	reg = FUNC0(MANTIS_UART_BAUD);

	switch (params->baud_rate) {
	case MANTIS_BAUD_9600:
		reg |= 0xd8;
		break;
	case MANTIS_BAUD_19200:
		reg |= 0x6c;
		break;
	case MANTIS_BAUD_38400:
		reg |= 0x36;
		break;
	case MANTIS_BAUD_57600:
		reg |= 0x23;
		break;
	case MANTIS_BAUD_115200:
		reg |= 0x11;
		break;
	default:
		return -EINVAL;
	}

	FUNC1(reg, MANTIS_UART_BAUD);

	return 0;
}