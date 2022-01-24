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
 scalar_t__ bttv_gpio ; 
 int /*<<< orphan*/  FUNC0 (struct bttv*,char*) ; 
 scalar_t__ bttv_verbose ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct bttv *btv, int pin)
{
	int mask = (1 << pin);

	FUNC2(mask,mask);
	FUNC1(mask,0);
	FUNC3(2);
	FUNC5(500);
	FUNC1(mask,mask);

	if (bttv_gpio)
		FUNC0(btv,"msp34xx");
	if (bttv_verbose)
		FUNC4("%d: Hauppauge/Voodoo msp34xx: reset line init [%d]\n",
			btv->c.nr, pin);
}