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
struct qca8k_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 int FUNC2 (struct qca8k_priv*,int) ; 
 int FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int
FUNC4(struct qca8k_priv *priv, u32 reg, u32 mask)
{
	unsigned long timeout;

	timeout = jiffies + FUNC1(20);

	/* loop until the busy flag has cleared */
	do {
		u32 val = FUNC2(priv, reg);
		int busy = val & mask;

		if (!busy)
			break;
		FUNC0();
	} while (!FUNC3(jiffies, timeout));

	return FUNC3(jiffies, timeout);
}