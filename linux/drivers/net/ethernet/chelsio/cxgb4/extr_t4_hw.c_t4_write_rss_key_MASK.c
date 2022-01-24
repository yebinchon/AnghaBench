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
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  chip; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CHELSIO_T5 ; 
 int KEYEXTEND_F ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int KEYWREN_F ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  TP_RSS_CONFIG_VRT_A ; 
 int /*<<< orphan*/  TP_RSS_SECRET_KEY0_A ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,void*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int /*<<< orphan*/ ,int) ; 

void FUNC8(struct adapter *adap, const u32 *key, int idx,
		      bool sleep_ok)
{
	u8 rss_key_addr_cnt = 16;
	u32 vrt = FUNC5(adap, TP_RSS_CONFIG_VRT_A);

	/* T6 and later: for KeyMode 3 (per-vf and per-vf scramble),
	 * allows access to key addresses 16-63 by using KeyWrAddrX
	 * as index[5:4](upper 2) into key table
	 */
	if ((FUNC0(adap->params.chip) > CHELSIO_T5) &&
	    (vrt & KEYEXTEND_F) && (FUNC1(vrt) == 3))
		rss_key_addr_cnt = 32;

	FUNC6(adap, (void *)key, 10, TP_RSS_SECRET_KEY0_A, sleep_ok);

	if (idx >= 0 && idx < rss_key_addr_cnt) {
		if (rss_key_addr_cnt > 16)
			FUNC7(adap, TP_RSS_CONFIG_VRT_A,
				     FUNC2(idx >> 4) |
				     FUNC4(idx) | KEYWREN_F);
		else
			FUNC7(adap, TP_RSS_CONFIG_VRT_A,
				     FUNC3(idx) | KEYWREN_F);
	}
}