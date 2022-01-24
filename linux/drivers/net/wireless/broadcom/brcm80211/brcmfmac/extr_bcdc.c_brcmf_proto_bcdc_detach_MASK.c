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
struct brcmf_pub {TYPE_1__* proto; } ;
struct brcmf_bcdc {int /*<<< orphan*/  fws; } ;
struct TYPE_2__ {struct brcmf_bcdc* pd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_bcdc*) ; 

void FUNC2(struct brcmf_pub *drvr)
{
	struct brcmf_bcdc *bcdc = drvr->proto->pd;

	drvr->proto->pd = NULL;
	FUNC0(bcdc->fws);
	FUNC1(bcdc);
}