#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct qm_fd {int /*<<< orphan*/  status; } ;
struct net_device {int dummy; } ;
struct dpaa_priv {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_errors; } ;
struct dpaa_percpu_priv {int /*<<< orphan*/  tx_confirm; TYPE_1__ stats; } ;

/* Variables and functions */
 int FM_FD_STAT_TX_ERRORS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct dpaa_priv const*,struct qm_fd const*) ; 
 int /*<<< orphan*/  hw ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct dpaa_priv const*,int /*<<< orphan*/ ,struct net_device*,char*,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct net_device *net_dev,
			 const struct dpaa_priv *priv,
			 struct dpaa_percpu_priv *percpu_priv,
			 const struct qm_fd *fd,
			 u32 fqid)
{
	struct sk_buff	*skb;

	if (FUNC5(FUNC0(fd->status) & FM_FD_STAT_TX_ERRORS)) {
		if (FUNC3())
			FUNC4(priv, hw, net_dev, "FD status = 0x%08x\n",
				   FUNC0(fd->status) &
				   FM_FD_STAT_TX_ERRORS);

		percpu_priv->stats.tx_errors++;
	}

	percpu_priv->tx_confirm++;

	skb = FUNC2(priv, fd);

	FUNC1(skb);
}