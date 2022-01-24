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
struct priv {int /*<<< orphan*/ ** tmd_skb; } ;
struct net_device {int /*<<< orphan*/  irq; struct priv* ml_priv; } ;

/* Variables and functions */
 scalar_t__ L_RESET ; 
 scalar_t__ PORT ; 
 int TMDNUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct priv *p = dev->ml_priv;

	FUNC3(dev);

	FUNC4(FUNC2(PORT+L_RESET),PORT+L_RESET); /* that's the hard way */

#ifdef XMT_VIA_SKB
	{
		int i;
		for(i=0;i<TMDNUM;i++)
		{
			if(p->tmd_skb[i]) {
				dev_kfree_skb(p->tmd_skb[i]);
				p->tmd_skb[i] = NULL;
			}
		}
	}
#endif
	FUNC1(dev->irq,dev);
	return 0;
}