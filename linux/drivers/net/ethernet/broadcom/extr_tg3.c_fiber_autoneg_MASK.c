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
struct tg3_fiber_aneginfo {int flags; int txconfig; scalar_t__ cur_time; int /*<<< orphan*/  state; } ;
struct tg3 {int mac_mode; } ;
typedef  int /*<<< orphan*/  aninfo ;

/* Variables and functions */
 int ANEG_DONE ; 
 int ANEG_FAILED ; 
 int /*<<< orphan*/  ANEG_STATE_UNKNOWN ; 
 int /*<<< orphan*/  MAC_MODE ; 
 int MAC_MODE_PORT_MODE_GMII ; 
 int MAC_MODE_PORT_MODE_MASK ; 
 int MAC_MODE_SEND_CONFIGS ; 
 int /*<<< orphan*/  MAC_TX_AUTO_NEG ; 
 int MR_AN_COMPLETE ; 
 int MR_AN_ENABLE ; 
 int MR_LINK_OK ; 
 int MR_LP_ADV_FULL_DUPLEX ; 
 int /*<<< orphan*/  FUNC0 (struct tg3_fiber_aneginfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct tg3*,struct tg3_fiber_aneginfo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct tg3 *tp, u32 *txflags, u32 *rxflags)
{
	int res = 0;
	struct tg3_fiber_aneginfo aninfo;
	int status = ANEG_FAILED;
	unsigned int tick;
	u32 tmp;

	FUNC2(MAC_TX_AUTO_NEG, 0);

	tmp = tp->mac_mode & ~MAC_MODE_PORT_MODE_MASK;
	FUNC2(MAC_MODE, tmp | MAC_MODE_PORT_MODE_GMII);
	FUNC3(40);

	FUNC2(MAC_MODE, tp->mac_mode | MAC_MODE_SEND_CONFIGS);
	FUNC3(40);

	FUNC0(&aninfo, 0, sizeof(aninfo));
	aninfo.flags |= MR_AN_ENABLE;
	aninfo.state = ANEG_STATE_UNKNOWN;
	aninfo.cur_time = 0;
	tick = 0;
	while (++tick < 195000) {
		status = FUNC1(tp, &aninfo);
		if (status == ANEG_DONE || status == ANEG_FAILED)
			break;

		FUNC3(1);
	}

	tp->mac_mode &= ~MAC_MODE_SEND_CONFIGS;
	FUNC2(MAC_MODE, tp->mac_mode);
	FUNC3(40);

	*txflags = aninfo.txconfig;
	*rxflags = aninfo.flags;

	if (status == ANEG_DONE &&
	    (aninfo.flags & (MR_AN_COMPLETE | MR_LINK_OK |
			     MR_LP_ADV_FULL_DUPLEX)))
		res = 1;

	return res;
}