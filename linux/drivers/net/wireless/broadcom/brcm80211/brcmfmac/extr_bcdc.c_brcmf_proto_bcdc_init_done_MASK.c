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
struct brcmf_fws_info {int dummy; } ;
struct brcmf_bcdc {struct brcmf_fws_info* fws; } ;
struct TYPE_2__ {struct brcmf_bcdc* pd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct brcmf_fws_info*) ; 
 int FUNC1 (struct brcmf_fws_info*) ; 
 struct brcmf_fws_info* FUNC2 (struct brcmf_pub*) ; 

__attribute__((used)) static int
FUNC3(struct brcmf_pub *drvr)
{
	struct brcmf_bcdc *bcdc = drvr->proto->pd;
	struct brcmf_fws_info *fws;

	fws = FUNC2(drvr);
	if (FUNC0(fws))
		return FUNC1(fws);

	bcdc->fws = fws;
	return 0;
}