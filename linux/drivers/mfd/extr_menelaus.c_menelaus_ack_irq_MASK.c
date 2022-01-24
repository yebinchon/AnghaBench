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

/* Variables and functions */
 int /*<<< orphan*/  MENELAUS_INT_ACK1 ; 
 int /*<<< orphan*/  MENELAUS_INT_ACK2 ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(int irq)
{
	if (irq > 7)
		return FUNC0(MENELAUS_INT_ACK2, 1 << (irq - 8));
	else
		return FUNC0(MENELAUS_INT_ACK1, 1 << irq);
}