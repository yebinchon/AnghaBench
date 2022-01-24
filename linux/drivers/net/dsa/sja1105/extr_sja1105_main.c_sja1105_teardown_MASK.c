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
struct TYPE_2__ {int /*<<< orphan*/  skb_rxtstamp_queue; int /*<<< orphan*/  rxtstamp_work; } ;
struct sja1105_private {int /*<<< orphan*/  static_config; TYPE_1__ tagger_data; } ;
struct dsa_switch {struct sja1105_private* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sja1105_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dsa_switch*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct dsa_switch *ds)
{
	struct sja1105_private *priv = ds->priv;

	FUNC3(ds);
	FUNC0(&priv->tagger_data.rxtstamp_work);
	FUNC4(&priv->tagger_data.skb_rxtstamp_queue);
	FUNC1(priv);
	FUNC2(&priv->static_config);
}