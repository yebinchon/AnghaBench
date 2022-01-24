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
struct ionic_lif {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 unsigned long HZ ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static inline int FUNC4(struct ionic_lif *lif, int bitname)
{
	unsigned long tlimit = jiffies + HZ;

	while (FUNC0(bitname, lif->state) &&
	       FUNC2(jiffies, tlimit))
		FUNC3(100, 200);

	return FUNC1(bitname, lif->state);
}