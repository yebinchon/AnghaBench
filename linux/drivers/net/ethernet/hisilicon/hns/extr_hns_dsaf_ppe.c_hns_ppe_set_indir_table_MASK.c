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
typedef  int u32 ;
struct hns_ppe_cb {int dummy; } ;

/* Variables and functions */
 int HNS_PPEV2_RSS_IND_TBL_SIZE ; 
 int /*<<< orphan*/  PPEV2_CFG_RSS_TBL_4N0_M ; 
 int /*<<< orphan*/  PPEV2_CFG_RSS_TBL_4N0_S ; 
 int /*<<< orphan*/  PPEV2_CFG_RSS_TBL_4N1_M ; 
 int /*<<< orphan*/  PPEV2_CFG_RSS_TBL_4N1_S ; 
 int /*<<< orphan*/  PPEV2_CFG_RSS_TBL_4N2_M ; 
 int /*<<< orphan*/  PPEV2_CFG_RSS_TBL_4N2_S ; 
 int /*<<< orphan*/  PPEV2_CFG_RSS_TBL_4N3_M ; 
 int /*<<< orphan*/  PPEV2_CFG_RSS_TBL_4N3_S ; 
 scalar_t__ PPEV2_INDRECTION_TBL_REG ; 
 int FUNC0 (struct hns_ppe_cb*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_ppe_cb*,scalar_t__,int) ; 

void FUNC3(struct hns_ppe_cb *ppe_cb,
			     const u32 rss_tab[HNS_PPEV2_RSS_IND_TBL_SIZE])
{
	int i;
	int reg_value;

	for (i = 0; i < (HNS_PPEV2_RSS_IND_TBL_SIZE / 4); i++) {
		reg_value = FUNC0(ppe_cb,
					  PPEV2_INDRECTION_TBL_REG + i * 0x4);

		FUNC1(reg_value, PPEV2_CFG_RSS_TBL_4N0_M,
			       PPEV2_CFG_RSS_TBL_4N0_S,
			       rss_tab[i * 4 + 0] & 0x1F);
		FUNC1(reg_value, PPEV2_CFG_RSS_TBL_4N1_M,
			       PPEV2_CFG_RSS_TBL_4N1_S,
				rss_tab[i * 4 + 1] & 0x1F);
		FUNC1(reg_value, PPEV2_CFG_RSS_TBL_4N2_M,
			       PPEV2_CFG_RSS_TBL_4N2_S,
				rss_tab[i * 4 + 2] & 0x1F);
		FUNC1(reg_value, PPEV2_CFG_RSS_TBL_4N3_M,
			       PPEV2_CFG_RSS_TBL_4N3_S,
				rss_tab[i * 4 + 3] & 0x1F);
		FUNC2(
			ppe_cb, PPEV2_INDRECTION_TBL_REG + i * 0x4, reg_value);
	}
}