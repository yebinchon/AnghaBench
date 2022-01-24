#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_window_errors; } ;
struct net_device {TYPE_2__ stats; struct airo_info* ml_priv; } ;
struct TYPE_3__ {int fid; struct sk_buff* skb; } ;
struct airo_info {int* fids; int /*<<< orphan*/  sem; int /*<<< orphan*/  flags; int /*<<< orphan*/  jobs; TYPE_1__ xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_PENDING_XMIT ; 
 int /*<<< orphan*/  JOB_XMIT ; 
 int MAX_FIDS ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct airo_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev) {
	u16 status;
	int i;
	struct airo_info *priv = dev->ml_priv;
	struct sk_buff *skb = priv->xmit.skb;
	int fid = priv->xmit.fid;
	u32 *fids = priv->fids;

	FUNC0(JOB_XMIT, &priv->jobs);
	FUNC0(FLAG_PENDING_XMIT, &priv->flags);
	status = FUNC4 (priv, fids[fid], skb->data);
	FUNC5(&priv->sem);

	i = 0;
	if ( status == SUCCESS ) {
		FUNC2(dev);
		for (; i < MAX_FIDS / 2 && (priv->fids[i] & 0xffff0000); i++);
	} else {
		priv->fids[fid] &= 0xffff;
		dev->stats.tx_window_errors++;
	}
	if (i < MAX_FIDS / 2)
		FUNC3(dev);
	FUNC1(skb);
}