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
typedef  int /*<<< orphan*/  u8 ;
struct pti_masterchannel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pti_masterchannel*,int /*<<< orphan*/ *,int) ; 

void FUNC1(struct pti_masterchannel *mc, u8 *buf, int count)
{
	/*
	 * since this function is exported, this is treated like an
	 * API function, thus, all parameters should
	 * be checked for validity.
	 */
	if ((mc != NULL) && (buf != NULL) && (count > 0))
		FUNC0(mc, buf, count);
	return;
}