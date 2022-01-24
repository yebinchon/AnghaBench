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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct dvb_bt8xx_card *bt)
{
	/* Set pin 27 of the lgdt3303 chip high to reset the frontend */

	/* Pulse the reset line */
	FUNC0(bt->bttv_nr, 0x00e00007, 0x00000001); /* High */
	FUNC0(bt->bttv_nr, 0x00e00007, 0x00000000); /* Low  */
	FUNC1(100);

	FUNC0(bt->bttv_nr, 0x00e00007, 0x00000001); /* High */
	FUNC1(100);
}