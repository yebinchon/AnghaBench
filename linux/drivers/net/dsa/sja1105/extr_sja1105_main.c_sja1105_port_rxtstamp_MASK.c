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
struct sk_buff {int dummy; } ;
struct sja1105_tagger_data {int /*<<< orphan*/  rxtstamp_work; int /*<<< orphan*/  skb_rxtstamp_queue; int /*<<< orphan*/  state; } ;
struct sja1105_private {struct sja1105_tagger_data tagger_data; } ;
struct dsa_switch {struct sja1105_private* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  SJA1105_HWTS_RX_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct dsa_switch *ds, int port,
				  struct sk_buff *skb, unsigned int type)
{
	struct sja1105_private *priv = ds->priv;
	struct sja1105_tagger_data *data = &priv->tagger_data;

	if (!FUNC2(SJA1105_HWTS_RX_EN, &data->state))
		return false;

	/* We need to read the full PTP clock to reconstruct the Rx
	 * timestamp. For that we need a sleepable context.
	 */
	FUNC1(&data->skb_rxtstamp_queue, skb);
	FUNC0(&data->rxtstamp_work);
	return true;
}