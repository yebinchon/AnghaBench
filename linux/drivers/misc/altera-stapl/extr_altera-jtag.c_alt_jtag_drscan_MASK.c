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
typedef  int u8 ;
typedef  int u32 ;
struct altera_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct altera_state *astate,
			int start_state,
			int count,
			u8 *tdi,
			u8 *tdo)
{
	int i = 0;
	int tdo_bit = 0;
	int status = 1;

	/* First go to DRSHIFT state */
	switch (start_state) {
	case 0:						/* IDLE */
		FUNC0(1, 0, 0);	/* DRSELECT */
		FUNC0(0, 0, 0);	/* DRCAPTURE */
		FUNC0(0, 0, 0);	/* DRSHIFT */
		break;

	case 1:						/* DRPAUSE */
		FUNC0(1, 0, 0);	/* DREXIT2 */
		FUNC0(1, 0, 0);	/* DRUPDATE */
		FUNC0(1, 0, 0);	/* DRSELECT */
		FUNC0(0, 0, 0);	/* DRCAPTURE */
		FUNC0(0, 0, 0);	/* DRSHIFT */
		break;

	case 2:						/* IRPAUSE */
		FUNC0(1, 0, 0);	/* IREXIT2 */
		FUNC0(1, 0, 0);	/* IRUPDATE */
		FUNC0(1, 0, 0);	/* DRSELECT */
		FUNC0(0, 0, 0);	/* DRCAPTURE */
		FUNC0(0, 0, 0);	/* DRSHIFT */
		break;

	default:
		status = 0;
	}

	if (status) {
		/* loop in the SHIFT-DR state */
		for (i = 0; i < count; i++) {
			tdo_bit = FUNC0(
					(i == count - 1),
					tdi[i >> 3] & (1 << (i & 7)),
					(tdo != NULL));

			if (tdo != NULL) {
				if (tdo_bit)
					tdo[i >> 3] |= (1 << (i & 7));
				else
					tdo[i >> 3] &= ~(u32)(1 << (i & 7));

			}
		}

		FUNC0(0, 0, 0);	/* DRPAUSE */
	}

	return status;
}