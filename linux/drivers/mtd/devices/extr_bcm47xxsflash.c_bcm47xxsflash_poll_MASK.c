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
struct bcm47xxsflash {int type; int (* cc_read ) (struct bcm47xxsflash*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
#define  BCM47XXSFLASH_TYPE_ATMEL 129 
#define  BCM47XXSFLASH_TYPE_ST 128 
 int /*<<< orphan*/  BCMA_CC_FLASHDATA ; 
 int EBUSY ; 
 int /*<<< orphan*/  OPCODE_AT_STATUS ; 
 int /*<<< orphan*/  OPCODE_ST_RDSR ; 
 int SR_AT_READY ; 
 int SR_ST_WIP ; 
 int /*<<< orphan*/  FUNC0 (struct bcm47xxsflash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct bcm47xxsflash*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct bcm47xxsflash*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct bcm47xxsflash *b47s, int timeout)
{
	unsigned long deadline = jiffies + timeout;

	do {
		switch (b47s->type) {
		case BCM47XXSFLASH_TYPE_ST:
			FUNC0(b47s, OPCODE_ST_RDSR);
			if (!(b47s->cc_read(b47s, BCMA_CC_FLASHDATA) &
			      SR_ST_WIP))
				return 0;
			break;
		case BCM47XXSFLASH_TYPE_ATMEL:
			FUNC0(b47s, OPCODE_AT_STATUS);
			if (b47s->cc_read(b47s, BCMA_CC_FLASHDATA) &
			    SR_AT_READY)
				return 0;
			break;
		}

		FUNC1();
		FUNC6(1);
	} while (!FUNC5(jiffies, deadline));

	FUNC2("Timeout waiting for flash to be ready!\n");

	return -EBUSY;
}