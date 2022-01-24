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
struct av7110 {int /*<<< orphan*/  debilock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBINOSWAP ; 
 int /*<<< orphan*/  IRQ_RX ; 
 int /*<<< orphan*/  FUNC0 (struct av7110*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct av7110*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC4(struct av7110 *av7110)
{
	unsigned long flags;

	FUNC2(&av7110->debilock, flags);
	FUNC0(av7110, DEBINOSWAP, IRQ_RX, 2);
	FUNC1(av7110, DEBINOSWAP, IRQ_RX, 0, 2);
	FUNC3(&av7110->debilock, flags);
}