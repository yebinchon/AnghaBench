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
struct ftmac100_rxdes {int dummy; } ;
struct ftmac100 {int dummy; } ;

/* Variables and functions */
 struct ftmac100_rxdes* FUNC0 (struct ftmac100*) ; 
 int /*<<< orphan*/  FUNC1 (struct ftmac100*) ; 
 scalar_t__ FUNC2 (struct ftmac100_rxdes*) ; 
 int /*<<< orphan*/  FUNC3 (struct ftmac100_rxdes*) ; 
 int /*<<< orphan*/  FUNC4 (struct ftmac100_rxdes*) ; 

__attribute__((used)) static struct ftmac100_rxdes *
FUNC5(struct ftmac100 *priv)
{
	struct ftmac100_rxdes *rxdes = FUNC0(priv);

	while (!FUNC3(rxdes)) {
		if (FUNC2(rxdes))
			return rxdes;

		FUNC4(rxdes);
		FUNC1(priv);
		rxdes = FUNC0(priv);
	}

	return NULL;
}