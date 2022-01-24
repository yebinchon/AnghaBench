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
typedef  size_t u32 ;
struct sk_buff {int dummy; } ;
struct nfp_flower_priv {int /*<<< orphan*/  stats_lock; TYPE_1__* stats; } ;
struct nfp_fl_stats_frame {int /*<<< orphan*/  byte_count; int /*<<< orphan*/  pkt_count; int /*<<< orphan*/  stats_con_id; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  used; int /*<<< orphan*/  bytes; int /*<<< orphan*/  pkts; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 unsigned char* FUNC2 (struct sk_buff*) ; 
 unsigned int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct nfp_app *app, struct sk_buff *skb)
{
	unsigned int msg_len = FUNC3(skb);
	struct nfp_flower_priv *priv = app->priv;
	struct nfp_fl_stats_frame *stats;
	unsigned char *msg;
	u32 ctx_id;
	int i;

	msg = FUNC2(skb);

	FUNC4(&priv->stats_lock);
	for (i = 0; i < msg_len / sizeof(*stats); i++) {
		stats = (struct nfp_fl_stats_frame *)msg + i;
		ctx_id = FUNC0(stats->stats_con_id);
		priv->stats[ctx_id].pkts += FUNC0(stats->pkt_count);
		priv->stats[ctx_id].bytes += FUNC1(stats->byte_count);
		priv->stats[ctx_id].used = jiffies;
	}
	FUNC5(&priv->stats_lock);
}