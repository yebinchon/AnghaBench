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
struct mtk_eth {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTK_PHY_IAC ; 
 int PHY_IAC_ACCESS ; 
 scalar_t__ PHY_IAC_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 int FUNC1 (struct mtk_eth*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct mtk_eth *eth)
{
	unsigned long t_start = jiffies;

	while (1) {
		if (!(FUNC1(eth, MTK_PHY_IAC) & PHY_IAC_ACCESS))
			return 0;
		if (FUNC2(jiffies, t_start + PHY_IAC_TIMEOUT))
			break;
		FUNC3(10, 20);
	}

	FUNC0(eth->dev, "mdio: MDIO timeout\n");
	return -1;
}