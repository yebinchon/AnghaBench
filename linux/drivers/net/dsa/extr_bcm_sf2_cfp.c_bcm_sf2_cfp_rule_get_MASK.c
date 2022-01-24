#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  location; } ;
struct ethtool_rxnfc {int /*<<< orphan*/  data; TYPE_1__ fs; } ;
struct cfp_rule {int /*<<< orphan*/  fs; } ;
struct bcm_sf2_priv {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct cfp_rule* FUNC0 (struct bcm_sf2_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_sf2_priv*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct bcm_sf2_priv *priv, int port,
				struct ethtool_rxnfc *nfc)
{
	struct cfp_rule *rule;

	rule = FUNC0(priv, port, nfc->fs.location);
	if (!rule)
		return -EINVAL;

	FUNC3(&nfc->fs, &rule->fs, sizeof(rule->fs));

	FUNC2(&nfc->fs);

	/* Put the TCAM size here */
	nfc->data = FUNC1(priv);

	return 0;
}