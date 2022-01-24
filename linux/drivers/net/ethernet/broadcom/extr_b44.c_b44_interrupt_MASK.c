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
struct net_device {int dummy; } ;
struct b44 {int istat; int /*<<< orphan*/  lock; int /*<<< orphan*/  napi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  B44_IMASK ; 
 int /*<<< orphan*/  B44_ISTAT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b44*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct b44*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct b44*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*) ; 
 struct b44* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static irqreturn_t FUNC12(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	struct b44 *bp = FUNC7(dev);
	u32 istat, imask;
	int handled = 0;

	FUNC9(&bp->lock);

	istat = FUNC3(bp, B44_ISTAT);
	imask = FUNC3(bp, B44_IMASK);

	/* The interrupt mask register controls which interrupt bits
	 * will actually raise an interrupt to the CPU when set by hw/firmware,
	 * but doesn't mask off the bits.
	 */
	istat &= imask;
	if (istat) {
		handled = 1;

		if (FUNC11(!FUNC8(dev))) {
			FUNC6(dev, "late interrupt\n");
			goto irq_ack;
		}

		if (FUNC5(&bp->napi)) {
			/* NOTE: These writes are posted by the readback of
			 *       the ISTAT register below.
			 */
			bp->istat = istat;
			FUNC1(bp);
			FUNC2(&bp->napi);
		}

irq_ack:
		FUNC4(bp, B44_ISTAT, istat);
		FUNC3(bp, B44_ISTAT);
	}
	FUNC10(&bp->lock);
	return FUNC0(handled);
}