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
struct rtsx_pcr {int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*) ; 
 scalar_t__ FUNC1 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  rtl8411b_pcr_ops ; 
 int /*<<< orphan*/  rtl8411b_qfn48 ; 
 int /*<<< orphan*/  rtl8411b_qfn64 ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 

void FUNC3(struct rtsx_pcr *pcr)
{
	FUNC0(pcr);
	pcr->ops = &rtl8411b_pcr_ops;
	if (FUNC1(pcr))
		FUNC2(pcr, rtl8411b_qfn48);
	else
		FUNC2(pcr, rtl8411b_qfn64);
}