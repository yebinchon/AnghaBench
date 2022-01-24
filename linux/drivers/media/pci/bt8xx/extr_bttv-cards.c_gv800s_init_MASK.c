#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int nr; } ;
struct bttv {int* sw_status; TYPE_1__ c; } ;

/* Variables and functions */
 int BTTV_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct bttv*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct bttv*,int,int,int) ; 
 struct bttv** master ; 

__attribute__((used)) static void FUNC4(struct bttv *btv)
{
	int ix;

	FUNC1(0xf107f, 0xf107f);
	FUNC2(1<<19); /* reset the analog MUX */
	FUNC2(0);

	/* Preset camera 0 to the 4 controllers */
	for (ix = 0; ix < 4; ix++) {
		btv->sw_status[ix] = ix;
		FUNC3(btv, ix, ix, 1);
	}

	/* Inputs on the "master" controller need this brightness fix */
	FUNC0(btv, 0x18, 0x5, 0x90, 1);

	if (btv->c.nr > BTTV_MAX-4)
		return;
	/*
	 * Store the "master" controller pointer in the master
	 * array for later use in the muxsel function.
	 */
	master[btv->c.nr]   = btv;
	master[btv->c.nr+1] = btv;
	master[btv->c.nr+2] = btv;
	master[btv->c.nr+3] = btv;
}