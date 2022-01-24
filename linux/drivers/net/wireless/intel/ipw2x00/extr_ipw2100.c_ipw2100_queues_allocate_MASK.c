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
struct ipw2100_priv {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct ipw2100_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipw2100_priv*) ; 
 scalar_t__ FUNC2 (struct ipw2100_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw2100_priv*) ; 
 scalar_t__ FUNC4 (struct ipw2100_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipw2100_priv*) ; 

__attribute__((used)) static int FUNC6(struct ipw2100_priv *priv)
{
	if (FUNC4(priv) ||
	    FUNC2(priv) || FUNC0(priv))
		goto fail;

	return 0;

      fail:
	FUNC5(priv);
	FUNC3(priv);
	FUNC1(priv);
	return -ENOMEM;
}