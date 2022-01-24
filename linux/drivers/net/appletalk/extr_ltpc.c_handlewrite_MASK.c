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
struct net_device {int dma; int base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MODE_WRITE ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  ltdmabuf ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct net_device*,int) ; 

__attribute__((used)) static void FUNC13(struct net_device *dev)
{
	/* called *only* from idle, non-reentrant */
	/* on entry, 0xfb and ltdmabuf holds data */
	int dma = dev->dma;
	int base = dev->base_addr;
	unsigned long flags;
	
	flags=FUNC0();
	FUNC2(dma);
	FUNC1(dma);
	FUNC10(dma,DMA_MODE_WRITE);
	FUNC8(dma,FUNC11(ltdmabuf));
	FUNC9(dma,800);
	FUNC3(dma);
	FUNC7(flags);
	
	FUNC5(base+3);
	FUNC5(base+2);

	if ( FUNC12(dev,0xfb) ) {
		flags=FUNC0();
		FUNC6("timed out in handlewrite, dma res %d\n",
			FUNC4(dev->dma) );
		FUNC7(flags);
	}
}