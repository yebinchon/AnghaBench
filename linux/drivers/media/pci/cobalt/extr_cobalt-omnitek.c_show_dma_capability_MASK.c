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
struct cobalt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAPABILITY_HEADER ; 
 int /*<<< orphan*/  CAPABILITY_REGISTER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DMA_TYPE_FIFO ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct cobalt *cobalt)
{
	u32 header = FUNC3(CAPABILITY_HEADER);
	u32 capa = FUNC3(CAPABILITY_REGISTER);
	u32 i;

	FUNC1("Omnitek DMA capability: ID 0x%02x Version 0x%02x Next 0x%x Size 0x%x\n",
		    header & 0xff, (header >> 8) & 0xff,
		    (header >> 16) & 0xffff, (capa >> 24) & 0xff);

	switch ((capa >> 8) & 0x3) {
	case 0:
		FUNC1("Omnitek DMA: 32 bits PCIe and Local\n");
		break;
	case 1:
		FUNC1("Omnitek DMA: 64 bits PCIe, 32 bits Local\n");
		break;
	case 3:
		FUNC1("Omnitek DMA: 64 bits PCIe and Local\n");
		break;
	}

	for (i = 0;  i < (capa & 0xf);  i++) {
		u32 status = FUNC3(FUNC0(i));

		FUNC1("Omnitek DMA channel #%d: %s %s\n", i,
			    status & DMA_TYPE_FIFO ? "FIFO" : "MEMORY",
			    FUNC2(status));
	}
}