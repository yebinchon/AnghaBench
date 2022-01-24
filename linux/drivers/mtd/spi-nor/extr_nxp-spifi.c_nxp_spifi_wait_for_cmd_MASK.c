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
typedef  int u8 ;
struct nxp_spifi {int /*<<< orphan*/  dev; scalar_t__ io_base; } ;

/* Variables and functions */
 scalar_t__ SPIFI_STAT ; 
 int SPIFI_STAT_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (scalar_t__,int,int,int,int) ; 

__attribute__((used)) static int FUNC2(struct nxp_spifi *spifi)
{
	u8 stat;
	int ret;

	ret = FUNC1(spifi->io_base + SPIFI_STAT, stat,
				 !(stat & SPIFI_STAT_CMD), 10, 30);
	if (ret)
		FUNC0(spifi->dev, "command timed out\n");

	return ret;
}