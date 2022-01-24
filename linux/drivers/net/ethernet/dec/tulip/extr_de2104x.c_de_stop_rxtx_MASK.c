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
struct de_private {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MacMode ; 
 int RxTx ; 
 int /*<<< orphan*/  FUNC0 (struct de_private*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5 (struct de_private *de)
{
	u32 macmode;
	unsigned int i = 1300/100;

	macmode = FUNC1(MacMode);
	if (macmode & RxTx) {
		FUNC2(MacMode, macmode & ~RxTx);
		FUNC1(MacMode);
	}

	/* wait until in-flight frame completes.
	 * Max time @ 10BT: 1500*8b/10Mbps == 1200us (+ 100us margin)
	 * Typically expect this loop to end in < 50 us on 100BT.
	 */
	while (--i) {
		if (!FUNC0(de))
			return;
		FUNC4(100);
	}

	FUNC3(de->dev, "timeout expired, stopping DMA\n");
}