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
struct irq_data {int dummy; } ;
struct arizona {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 struct arizona* FUNC0 (struct irq_data*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct irq_data *data, unsigned int on)
{
	struct arizona *arizona = FUNC0(data);

	return FUNC1(arizona->irq, on);
}