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
struct ieee80211_vif {int type; scalar_t__ addr; } ;
struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct adm8211_priv {scalar_t__ mode; } ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int EOPNOTSUPP ; 
 scalar_t__ NL80211_IFTYPE_MONITOR ; 
#define  NL80211_IFTYPE_STATION 128 
 int /*<<< orphan*/  PAR0 ; 
 int /*<<< orphan*/  PAR1 ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ieee80211_hw *dev,
				 struct ieee80211_vif *vif)
{
	struct adm8211_priv *priv = dev->priv;
	if (priv->mode != NL80211_IFTYPE_MONITOR)
		return -EOPNOTSUPP;

	switch (vif->type) {
	case NL80211_IFTYPE_STATION:
		priv->mode = vif->type;
		break;
	default:
		return -EOPNOTSUPP;
	}

	FUNC1();

	FUNC0(PAR0, FUNC5(*(__le32 *)vif->addr));
	FUNC0(PAR1, FUNC4(*(__le16 *)(vif->addr + 4)));

	FUNC3(dev);

	FUNC2();

	return 0;
}