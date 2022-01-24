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
struct device {int /*<<< orphan*/  of_node; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/  const*,int) ; 

unsigned int FUNC3(struct device *dev)
{
	const __be32 *prop;
	unsigned int bank, count = 0;
	unsigned long referenced = 0;
	int i = 0;

	while ((prop = FUNC1(dev->of_node, i++, NULL, NULL))) {
		bank = FUNC2(prop, 1);
		if (!(referenced & FUNC0(bank))) {
			referenced |= FUNC0(bank);
			count++;
		}
	}

	return count;
}