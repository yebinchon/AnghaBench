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
struct unimac_mdio_priv {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct unimac_mdio_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(void *wait_func_data)
{
	struct unimac_mdio_priv *priv = wait_func_data;
	unsigned int timeout = 1000;

	do {
		if (!FUNC0(priv))
			return 0;

		FUNC1(1000, 2000);
	} while (--timeout);

	return -ETIMEDOUT;
}