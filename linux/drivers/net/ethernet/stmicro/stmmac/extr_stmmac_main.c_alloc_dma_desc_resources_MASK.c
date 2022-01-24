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
struct stmmac_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct stmmac_priv*) ; 
 int FUNC1 (struct stmmac_priv*) ; 

__attribute__((used)) static int FUNC2(struct stmmac_priv *priv)
{
	/* RX Allocation */
	int ret = FUNC0(priv);

	if (ret)
		return ret;

	ret = FUNC1(priv);

	return ret;
}