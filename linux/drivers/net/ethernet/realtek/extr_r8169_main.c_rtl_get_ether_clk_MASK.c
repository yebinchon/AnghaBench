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
struct rtl8169_private {struct clk* clk; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,struct clk*) ; 
 struct clk* FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  rtl_disable_clk ; 
 struct device* FUNC6 (struct rtl8169_private*) ; 

__attribute__((used)) static int FUNC7(struct rtl8169_private *tp)
{
	struct device *d = FUNC6(tp);
	struct clk *clk;
	int rc;

	clk = FUNC5(d, "ether_clk");
	if (FUNC0(clk)) {
		rc = FUNC1(clk);
		if (rc == -ENOENT)
			/* clk-core allows NULL (for suspend / resume) */
			rc = 0;
		else if (rc != -EPROBE_DEFER)
			FUNC3(d, "failed to get clk: %d\n", rc);
	} else {
		tp->clk = clk;
		rc = FUNC2(clk);
		if (rc)
			FUNC3(d, "failed to enable clk: %d\n", rc);
		else
			rc = FUNC4(d, rtl_disable_clk, clk);
	}

	return rc;
}