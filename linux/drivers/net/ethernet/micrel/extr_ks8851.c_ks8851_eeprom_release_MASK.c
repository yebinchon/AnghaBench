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
struct ks8851_net {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned int EEPCR_EESA ; 
 int /*<<< orphan*/  KS_EEPCR ; 
 unsigned int FUNC0 (struct ks8851_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ks8851_net*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ks8851_net *ks)
{
	unsigned val = FUNC0(ks, KS_EEPCR);

	FUNC1(ks, KS_EEPCR, val & ~EEPCR_EESA);
	FUNC2(&ks->lock);
}