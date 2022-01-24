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
struct net_device {int dummy; } ;
struct axienet_option {int opt; int m_or; int /*<<< orphan*/  reg; } ;
struct axienet_local {int options; } ;

/* Variables and functions */
 int FUNC0 (struct axienet_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct axienet_local*,int /*<<< orphan*/ ,int) ; 
 struct axienet_option* axienet_options ; 
 struct axienet_local* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *ndev, u32 options)
{
	int reg;
	struct axienet_local *lp = FUNC2(ndev);
	struct axienet_option *tp = &axienet_options[0];

	while (tp->opt) {
		reg = ((FUNC0(lp, tp->reg)) & ~(tp->m_or));
		if (options & tp->opt)
			reg |= tp->m_or;
		FUNC1(lp, tp->reg, reg);
		tp++;
	}

	lp->options |= options;
}