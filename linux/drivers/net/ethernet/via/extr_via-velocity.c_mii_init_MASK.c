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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct velocity_info {int mii_status; int /*<<< orphan*/  mac_regs; int /*<<< orphan*/  phy_id; } ;

/* Variables and functions */
 int ADVERTISE_PAUSE_ASYM ; 
 int ADVERTISE_PAUSE_CAP ; 
 int BMCR_ISOLATE ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MII_REG_PSCR ; 
 int /*<<< orphan*/  MII_SREVISION ; 
 int /*<<< orphan*/  MII_TPISTATUS ; 
#define  PHYID_CICADA_CS8201 133 
 int FUNC2 (int /*<<< orphan*/ ) ; 
#define  PHYID_ICPLUS_IP101A 132 
#define  PHYID_MARVELL_1000 131 
#define  PHYID_MARVELL_1000S 130 
#define  PHYID_VT3216_32BIT 129 
#define  PHYID_VT3216_64BIT 128 
 int PLED_LALBE ; 
 int PSCR_ACRSTX ; 
 int TCSR_ECHODIS ; 
 int VELOCITY_DUPLEX_FULL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct velocity_info *vptr, u32 mii_status)
{
	u16 BMCR;

	switch (FUNC2(vptr->phy_id)) {
	case PHYID_ICPLUS_IP101A:
		FUNC1((ADVERTISE_PAUSE_ASYM | ADVERTISE_PAUSE_CAP),
						MII_ADVERTISE, vptr->mac_regs);
		if (vptr->mii_status & VELOCITY_DUPLEX_FULL)
			FUNC1(TCSR_ECHODIS, MII_SREVISION,
								vptr->mac_regs);
		else
			FUNC0(TCSR_ECHODIS, MII_SREVISION,
								vptr->mac_regs);
		FUNC1(PLED_LALBE, MII_TPISTATUS, vptr->mac_regs);
		break;
	case PHYID_CICADA_CS8201:
		/*
		 *	Reset to hardware default
		 */
		FUNC0((ADVERTISE_PAUSE_ASYM | ADVERTISE_PAUSE_CAP), MII_ADVERTISE, vptr->mac_regs);
		/*
		 *	Turn on ECHODIS bit in NWay-forced full mode and turn it
		 *	off it in NWay-forced half mode for NWay-forced v.s.
		 *	legacy-forced issue.
		 */
		if (vptr->mii_status & VELOCITY_DUPLEX_FULL)
			FUNC1(TCSR_ECHODIS, MII_SREVISION, vptr->mac_regs);
		else
			FUNC0(TCSR_ECHODIS, MII_SREVISION, vptr->mac_regs);
		/*
		 *	Turn on Link/Activity LED enable bit for CIS8201
		 */
		FUNC1(PLED_LALBE, MII_TPISTATUS, vptr->mac_regs);
		break;
	case PHYID_VT3216_32BIT:
	case PHYID_VT3216_64BIT:
		/*
		 *	Reset to hardware default
		 */
		FUNC1((ADVERTISE_PAUSE_ASYM | ADVERTISE_PAUSE_CAP), MII_ADVERTISE, vptr->mac_regs);
		/*
		 *	Turn on ECHODIS bit in NWay-forced full mode and turn it
		 *	off it in NWay-forced half mode for NWay-forced v.s.
		 *	legacy-forced issue
		 */
		if (vptr->mii_status & VELOCITY_DUPLEX_FULL)
			FUNC1(TCSR_ECHODIS, MII_SREVISION, vptr->mac_regs);
		else
			FUNC0(TCSR_ECHODIS, MII_SREVISION, vptr->mac_regs);
		break;

	case PHYID_MARVELL_1000:
	case PHYID_MARVELL_1000S:
		/*
		 *	Assert CRS on Transmit
		 */
		FUNC1(PSCR_ACRSTX, MII_REG_PSCR, vptr->mac_regs);
		/*
		 *	Reset to hardware default
		 */
		FUNC1((ADVERTISE_PAUSE_ASYM | ADVERTISE_PAUSE_CAP), MII_ADVERTISE, vptr->mac_regs);
		break;
	default:
		;
	}
	FUNC3(vptr->mac_regs, MII_BMCR, &BMCR);
	if (BMCR & BMCR_ISOLATE) {
		BMCR &= ~BMCR_ISOLATE;
		FUNC4(vptr->mac_regs, MII_BMCR, BMCR);
	}
}