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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct mantis_pci {int gpio_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANTIS_DEBUG ; 
 int /*<<< orphan*/  MANTIS_GPIF_ADDR ; 
 int /*<<< orphan*/  MANTIS_GPIF_DOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

void FUNC3(struct mantis_pci *mantis, u32 bitpos, u8 value)
{
	u32 cur;

	FUNC0(MANTIS_DEBUG, 1, "Set Bit <%d> to <%d>", bitpos, value);
	cur = FUNC1(MANTIS_GPIF_ADDR);
	if (value)
		mantis->gpio_status = cur | (1 << bitpos);
	else
		mantis->gpio_status = cur & (~(1 << bitpos));

	FUNC0(MANTIS_DEBUG, 1, "GPIO Value <%02x>", mantis->gpio_status);
	FUNC2(mantis->gpio_status, MANTIS_GPIF_ADDR);
	FUNC2(0x00, MANTIS_GPIF_DOUT);
}