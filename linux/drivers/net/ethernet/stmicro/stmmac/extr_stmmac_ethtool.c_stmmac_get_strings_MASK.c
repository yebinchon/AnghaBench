#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  rmon; int /*<<< orphan*/  asp; } ;
struct stmmac_priv {TYPE_1__ dma_cap; int /*<<< orphan*/  sstats; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {char const* stat_string; } ;
struct TYPE_5__ {char const* stat_string; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_GSTRING_LEN ; 
#define  ETH_SS_STATS 129 
#define  ETH_SS_TEST 128 
 int STMMAC_MMC_STATS_LEN ; 
 int STMMAC_SAFETY_FEAT_SIZE ; 
 int STMMAC_STATS_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 struct stmmac_priv* FUNC2 (struct net_device*) ; 
 TYPE_3__* stmmac_gstrings_stats ; 
 TYPE_2__* stmmac_mmc ; 
 int /*<<< orphan*/  FUNC3 (struct stmmac_priv*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC4 (struct stmmac_priv*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev, u32 stringset, u8 *data)
{
	int i;
	u8 *p = data;
	struct stmmac_priv *priv = FUNC2(dev);

	switch (stringset) {
	case ETH_SS_STATS:
		if (priv->dma_cap.asp) {
			for (i = 0; i < STMMAC_SAFETY_FEAT_SIZE; i++) {
				const char *desc;
				if (!FUNC3(priv,
							&priv->sstats, i,
							NULL, &desc)) {
					FUNC1(p, desc, ETH_GSTRING_LEN);
					p += ETH_GSTRING_LEN;
				}
			}
		}
		if (priv->dma_cap.rmon)
			for (i = 0; i < STMMAC_MMC_STATS_LEN; i++) {
				FUNC1(p, stmmac_mmc[i].stat_string,
				       ETH_GSTRING_LEN);
				p += ETH_GSTRING_LEN;
			}
		for (i = 0; i < STMMAC_STATS_LEN; i++) {
			FUNC1(p, stmmac_gstrings_stats[i].stat_string,
				ETH_GSTRING_LEN);
			p += ETH_GSTRING_LEN;
		}
		break;
	case ETH_SS_TEST:
		FUNC4(priv, p);
		break;
	default:
		FUNC0(1);
		break;
	}
}