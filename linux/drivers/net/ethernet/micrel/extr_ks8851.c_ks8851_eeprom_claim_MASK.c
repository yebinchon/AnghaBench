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
struct ks8851_net {int rc_ccr; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int CCR_EEPROM ; 
 int EEPCR_EECS ; 
 int EEPCR_EESA ; 
 int ENOENT ; 
 int /*<<< orphan*/  KS_EEPCR ; 
 int /*<<< orphan*/  FUNC0 (struct ks8851_net*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct ks8851_net *ks)
{
	if (!(ks->rc_ccr & CCR_EEPROM))
		return -ENOENT;

	FUNC1(&ks->lock);

	/* start with clock low, cs high */
	FUNC0(ks, KS_EEPCR, EEPCR_EESA | EEPCR_EECS);
	return 0;
}