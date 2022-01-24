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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct hns_ppe_cb {int /*<<< orphan*/  rss_indir_table; int /*<<< orphan*/  rss_key; } ;
struct hnae_handle {int dummy; } ;

/* Variables and functions */
 int HNS_PPEV2_RSS_IND_TBL_SIZE ; 
 int HNS_PPEV2_RSS_KEY_SIZE ; 
 struct hns_ppe_cb* FUNC0 (struct hnae_handle*) ; 
 int /*<<< orphan*/  FUNC1 (struct hns_ppe_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_ppe_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC4(struct hnae_handle *handle, const u32 *indir,
			  const u8 *key, const u8 hfunc)
{
	struct hns_ppe_cb *ppe_cb = FUNC0(handle);

	/* set the RSS Hash Key if specififed by the user */
	if (key) {
		FUNC3(ppe_cb->rss_key, key, HNS_PPEV2_RSS_KEY_SIZE);
		FUNC2(ppe_cb, ppe_cb->rss_key);
	}

	if (indir) {
		/* update the shadow RSS table with user specified qids */
		FUNC3(ppe_cb->rss_indir_table, indir,
		       HNS_PPEV2_RSS_IND_TBL_SIZE  * sizeof(*indir));

		/* now update the hardware */
		FUNC1(ppe_cb, ppe_cb->rss_indir_table);
	}

	return 0;
}