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
struct dvb_bt8xx_card {int /*<<< orphan*/  bttv_nr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static void FUNC4(struct dvb_bt8xx_card *bt)
{
	/*
	 * Reset the frontend, must be called before trying
	 * to initialise the MT352 or mt352_attach
	 * will fail. Same goes for the nxt6000 frontend.
	 *
	 */

	int ret = FUNC0(bt->bttv_nr, 0x08, 0x08);
	if (ret != 0)
		FUNC3("digitv_alps_tded4: Init Error - Can't Reset DVR (%i)\n",
			ret);

	/* Pulse the reset line */
	FUNC1(bt->bttv_nr, 0x08, 0x08); /* High */
	FUNC1(bt->bttv_nr, 0x08, 0x00); /* Low  */
	FUNC2(100);

	FUNC1(bt->bttv_nr, 0x08, 0x08); /* High */
}