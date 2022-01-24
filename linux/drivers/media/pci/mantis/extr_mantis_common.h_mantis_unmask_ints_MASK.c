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
typedef  int u32 ;
struct mantis_pci {int /*<<< orphan*/  intmask_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANTIS_INT_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC4(struct mantis_pci *mantis, u32 mask)
{
	unsigned long flags;

	FUNC2(&mantis->intmask_lock, flags);
	FUNC1(FUNC0(MANTIS_INT_MASK) | mask, MANTIS_INT_MASK);
	FUNC3(&mantis->intmask_lock, flags);
}