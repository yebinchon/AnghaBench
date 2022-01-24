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
struct b44 {int flags; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int B44_FLAG_100_BASE_T ; 
 int B44_FLAG_EXTERNAL_PHY ; 
 int B44_FLAG_FORCE_LINK ; 
 int B44_FLAG_FULL_DUPLEX ; 
 int /*<<< orphan*/  B44_MII_AUXCTRL ; 
 int /*<<< orphan*/  B44_TX_CTRL ; 
 int BMSR_JCD ; 
 int BMSR_LSTATUS ; 
 int BMSR_RFAULT ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int MII_AUXCTRL_DUPLEX ; 
 int MII_AUXCTRL_SPEED ; 
 int /*<<< orphan*/  MII_BMSR ; 
 int /*<<< orphan*/  MII_LPA ; 
 int TX_CTRL_DUPLEX ; 
 int /*<<< orphan*/  FUNC0 (struct b44*) ; 
 int /*<<< orphan*/  FUNC1 (struct b44*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct b44*,int,int) ; 
 int FUNC3 (struct b44*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct b44*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct b44 *bp)
{
	u32 bmsr, aux;

	if (bp->flags & B44_FLAG_EXTERNAL_PHY) {
		bp->flags |= B44_FLAG_100_BASE_T;
		if (!FUNC7(bp->dev)) {
			u32 val = FUNC3(bp, B44_TX_CTRL);
			if (bp->flags & B44_FLAG_FULL_DUPLEX)
				val |= TX_CTRL_DUPLEX;
			else
				val &= ~TX_CTRL_DUPLEX;
			FUNC4(bp, B44_TX_CTRL, val);
			FUNC8(bp->dev);
			FUNC0(bp);
		}
		return;
	}

	if (!FUNC1(bp, MII_BMSR, &bmsr) &&
	    !FUNC1(bp, B44_MII_AUXCTRL, &aux) &&
	    (bmsr != 0xffff)) {
		if (aux & MII_AUXCTRL_SPEED)
			bp->flags |= B44_FLAG_100_BASE_T;
		else
			bp->flags &= ~B44_FLAG_100_BASE_T;
		if (aux & MII_AUXCTRL_DUPLEX)
			bp->flags |= B44_FLAG_FULL_DUPLEX;
		else
			bp->flags &= ~B44_FLAG_FULL_DUPLEX;

		if (!FUNC7(bp->dev) &&
		    (bmsr & BMSR_LSTATUS)) {
			u32 val = FUNC3(bp, B44_TX_CTRL);
			u32 local_adv, remote_adv;

			if (bp->flags & B44_FLAG_FULL_DUPLEX)
				val |= TX_CTRL_DUPLEX;
			else
				val &= ~TX_CTRL_DUPLEX;
			FUNC4(bp, B44_TX_CTRL, val);

			if (!(bp->flags & B44_FLAG_FORCE_LINK) &&
			    !FUNC1(bp, MII_ADVERTISE, &local_adv) &&
			    !FUNC1(bp, MII_LPA, &remote_adv))
				FUNC2(bp, local_adv, remote_adv);

			/* Link now up */
			FUNC8(bp->dev);
			FUNC0(bp);
		} else if (FUNC7(bp->dev) && !(bmsr & BMSR_LSTATUS)) {
			/* Link now down */
			FUNC6(bp->dev);
			FUNC0(bp);
		}

		if (bmsr & BMSR_RFAULT)
			FUNC5(bp->dev, "Remote fault detected in PHY\n");
		if (bmsr & BMSR_JCD)
			FUNC5(bp->dev, "Jabber detected in PHY\n");
	}
}