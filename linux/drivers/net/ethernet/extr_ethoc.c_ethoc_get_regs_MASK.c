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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct ethtool_regs {scalar_t__ version; } ;
struct ethoc {int dummy; } ;

/* Variables and functions */
 int ETH_END ; 
 int /*<<< orphan*/  FUNC0 (struct ethoc*,unsigned int) ; 
 struct ethoc* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev, struct ethtool_regs *regs,
			   void *p)
{
	struct ethoc *priv = FUNC1(dev);
	u32 *regs_buff = p;
	unsigned i;

	regs->version = 0;
	for (i = 0; i < ETH_END / sizeof(u32); ++i)
		regs_buff[i] = FUNC0(priv, i * sizeof(u32));
}