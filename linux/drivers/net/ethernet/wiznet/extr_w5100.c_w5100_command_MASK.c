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
struct w5100_priv {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct w5100_priv*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC4 (struct w5100_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct w5100_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct w5100_priv *priv, u16 cmd)
{
	unsigned long timeout;

	FUNC5(priv, FUNC0(priv), cmd);

	timeout = jiffies + FUNC2(100);

	while (FUNC4(priv, FUNC0(priv)) != 0) {
		if (FUNC3(jiffies, timeout))
			return -EIO;
		FUNC1();
	}

	return 0;
}