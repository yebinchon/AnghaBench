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
struct e1000_hw {int dummy; } ;
struct e1000_adapter {struct e1000_hw hw; } ;
typedef  int /*<<< orphan*/  rss_key ;

/* Variables and functions */
 int E1000_MRQC_RSS_FIELD_IPV4 ; 
 int E1000_MRQC_RSS_FIELD_IPV4_TCP ; 
 int E1000_MRQC_RSS_FIELD_IPV6 ; 
 int E1000_MRQC_RSS_FIELD_IPV6_TCP ; 
 int E1000_MRQC_RSS_FIELD_IPV6_TCP_EX ; 
 int E1000_RXCSUM_PCSD ; 
 int /*<<< orphan*/  MRQC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  RXCSUM ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 

__attribute__((used)) static void FUNC5(struct e1000_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	u32 mrqc, rxcsum;
	u32 rss_key[10];
	int i;

	FUNC4(rss_key, sizeof(rss_key));
	for (i = 0; i < 10; i++)
		FUNC3(FUNC1(i), rss_key[i]);

	/* Direct all traffic to queue 0 */
	for (i = 0; i < 32; i++)
		FUNC3(FUNC0(i), 0);

	/* Disable raw packet checksumming so that RSS hash is placed in
	 * descriptor on writeback.
	 */
	rxcsum = FUNC2(RXCSUM);
	rxcsum |= E1000_RXCSUM_PCSD;

	FUNC3(RXCSUM, rxcsum);

	mrqc = (E1000_MRQC_RSS_FIELD_IPV4 |
		E1000_MRQC_RSS_FIELD_IPV4_TCP |
		E1000_MRQC_RSS_FIELD_IPV6 |
		E1000_MRQC_RSS_FIELD_IPV6_TCP |
		E1000_MRQC_RSS_FIELD_IPV6_TCP_EX);

	FUNC3(MRQC, mrqc);
}