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
struct jme_adapter {int dummy; } ;
struct ethtool_regs {int version; } ;

/* Variables and functions */
 int /*<<< orphan*/  JME_MAC ; 
 int /*<<< orphan*/  JME_MAC_LEN ; 
 int /*<<< orphan*/  JME_MISC ; 
 int /*<<< orphan*/  JME_MISC_LEN ; 
 int /*<<< orphan*/  JME_PHY ; 
 int /*<<< orphan*/  JME_PHY_LEN ; 
 int /*<<< orphan*/  JME_PHY_REG_NR ; 
 int /*<<< orphan*/  JME_REG_LEN ; 
 int /*<<< orphan*/  JME_RSS ; 
 int /*<<< orphan*/  JME_RSS_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct jme_adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct jme_adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct jme_adapter* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void
FUNC4(struct net_device *netdev, struct ethtool_regs *regs, void *p)
{
	struct jme_adapter *jme = FUNC3(netdev);
	u32 *p32 = (u32 *)p;

	FUNC1(p, 0xFF, JME_REG_LEN);

	regs->version = 1;
	FUNC2(jme, p32, JME_MAC, JME_MAC_LEN);

	p32 += 0x100 >> 2;
	FUNC2(jme, p32, JME_PHY, JME_PHY_LEN);

	p32 += 0x100 >> 2;
	FUNC2(jme, p32, JME_MISC, JME_MISC_LEN);

	p32 += 0x100 >> 2;
	FUNC2(jme, p32, JME_RSS, JME_RSS_LEN);

	p32 += 0x100 >> 2;
	FUNC0(jme, p32, JME_PHY_REG_NR);
}