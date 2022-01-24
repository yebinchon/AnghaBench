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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct aq_nic_s {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hash_secret_key; int /*<<< orphan*/ * indirection_table; } ;
struct aq_nic_cfg_s {TYPE_1__ aq_rss; } ;

/* Variables and functions */
 unsigned int AQ_CFG_RSS_INDIRECTION_TABLE_MAX ; 
 int /*<<< orphan*/  ETH_RSS_HASH_TOP ; 
 struct aq_nic_cfg_s* FUNC0 (struct aq_nic_s*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct aq_nic_s* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *ndev, u32 *indir, u8 *key,
			      u8 *hfunc)
{
	struct aq_nic_s *aq_nic = FUNC2(ndev);
	struct aq_nic_cfg_s *cfg = FUNC0(aq_nic);
	unsigned int i = 0U;

	if (hfunc)
		*hfunc = ETH_RSS_HASH_TOP; /* Toeplitz */
	if (indir) {
		for (i = 0; i < AQ_CFG_RSS_INDIRECTION_TABLE_MAX; i++)
			indir[i] = cfg->aq_rss.indirection_table[i];
	}
	if (key)
		FUNC1(key, cfg->aq_rss.hash_secret_key,
		       sizeof(cfg->aq_rss.hash_secret_key));
	return 0;
}