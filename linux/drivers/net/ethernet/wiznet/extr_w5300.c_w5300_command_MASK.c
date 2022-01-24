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
typedef  int /*<<< orphan*/  u16 ;
struct w5300_priv {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  W5300_S0_CR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (struct w5300_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct w5300_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct w5300_priv *priv, u16 cmd)
{
	unsigned long timeout = jiffies + FUNC1(100);

	FUNC4(priv, W5300_S0_CR, cmd);

	while (FUNC3(priv, W5300_S0_CR) != 0) {
		if (FUNC2(jiffies, timeout))
			return -EIO;
		FUNC0();
	}

	return 0;
}