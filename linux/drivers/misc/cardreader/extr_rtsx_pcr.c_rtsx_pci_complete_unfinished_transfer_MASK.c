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
struct rtsx_pcr {struct completion* finish_me; int /*<<< orphan*/  remove_pci; scalar_t__ done; } ;
struct completion {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct completion*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC4 (struct completion*,int /*<<< orphan*/ ) ; 

void FUNC5(struct rtsx_pcr *pcr)
{
	struct completion finish;

	pcr->finish_me = &finish;
	FUNC1(&finish);

	if (pcr->done)
		FUNC0(pcr->done);

	if (!pcr->remove_pci)
		FUNC3(pcr);

	FUNC4(&finish,
			FUNC2(2));
	pcr->finish_me = NULL;
}