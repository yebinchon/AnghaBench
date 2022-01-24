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
typedef  int /*<<< orphan*/  u32 ;
struct tg3 {int /*<<< orphan*/  indirect_lock; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TG3PCI_REG_BASE_ADDR ; 
 int /*<<< orphan*/  TG3PCI_REG_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static u32 FUNC4(struct tg3 *tp, u32 off)
{
	unsigned long flags;
	u32 val;

	FUNC2(&tp->indirect_lock, flags);
	FUNC1(tp->pdev, TG3PCI_REG_BASE_ADDR, off);
	FUNC0(tp->pdev, TG3PCI_REG_DATA, &val);
	FUNC3(&tp->indirect_lock, flags);
	return val;
}