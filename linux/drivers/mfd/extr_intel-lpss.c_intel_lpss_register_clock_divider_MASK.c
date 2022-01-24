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
struct intel_lpss {int /*<<< orphan*/  priv; } ;
struct clk {int dummy; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_SET_RATE_PARENT ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 struct clk* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct clk* FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*) ; 

__attribute__((used)) static int FUNC6(struct intel_lpss *lpss,
					     const char *devname,
					     struct clk **clk)
{
	char name[32];
	struct clk *tmp = *clk;

	FUNC5(name, sizeof(name), "%s-enable", devname);
	tmp = FUNC4(NULL, name, FUNC2(tmp), 0,
				lpss->priv, 0, 0, NULL);
	if (FUNC0(tmp))
		return FUNC1(tmp);

	FUNC5(name, sizeof(name), "%s-div", devname);
	tmp = FUNC3(NULL, name, FUNC2(tmp),
					      0, lpss->priv, 1, 15, 16, 15, 0,
					      NULL);
	if (FUNC0(tmp))
		return FUNC1(tmp);
	*clk = tmp;

	FUNC5(name, sizeof(name), "%s-update", devname);
	tmp = FUNC4(NULL, name, FUNC2(tmp),
				CLK_SET_RATE_PARENT, lpss->priv, 31, 0, NULL);
	if (FUNC0(tmp))
		return FUNC1(tmp);
	*clk = tmp;

	return 0;
}