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
struct TYPE_2__ {int /*<<< orphan*/  nr; } ;
struct bttv {TYPE_1__ c; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT848_GPIO_DATA ; 
 int /*<<< orphan*/  BT848_GPIO_OUT_EN ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,char*) ; 

void FUNC2(struct bttv *btv, char *comment)
{
	unsigned int outbits, data;
	outbits = FUNC0(BT848_GPIO_OUT_EN);
	data    = FUNC0(BT848_GPIO_DATA);
	FUNC1("%d: gpio: en=%08x, out=%08x in=%08x [%s]\n",
		 btv->c.nr, outbits, data & outbits, data & ~outbits, comment);
}