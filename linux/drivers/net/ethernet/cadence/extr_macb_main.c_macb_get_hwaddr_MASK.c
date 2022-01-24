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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct macb {TYPE_2__* dev; TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  addr ;
struct TYPE_4__ {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ SA1B ; 
 scalar_t__ SA1T ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int*) ; 
 int FUNC3 (struct macb*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static void FUNC5(struct macb *bp)
{
	u32 bottom;
	u16 top;
	u8 addr[6];
	int i;

	/* Check all 4 address register for valid address */
	for (i = 0; i < 4; i++) {
		bottom = FUNC3(bp, SA1B + i * 8);
		top = FUNC3(bp, SA1T + i * 8);

		addr[0] = bottom & 0xff;
		addr[1] = (bottom >> 8) & 0xff;
		addr[2] = (bottom >> 16) & 0xff;
		addr[3] = (bottom >> 24) & 0xff;
		addr[4] = top & 0xff;
		addr[5] = (top >> 8) & 0xff;

		if (FUNC2(addr)) {
			FUNC4(bp->dev->dev_addr, addr, sizeof(addr));
			return;
		}
	}

	FUNC0(&bp->pdev->dev, "invalid hw address, using random\n");
	FUNC1(bp->dev);
}