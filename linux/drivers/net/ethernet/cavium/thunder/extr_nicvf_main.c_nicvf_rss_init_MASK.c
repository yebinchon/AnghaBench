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
typedef  int /*<<< orphan*/  u64 ;
struct nicvf_rss_info {int enable; int cfg; int rss_size; int /*<<< orphan*/ * ind_tbl; scalar_t__ hash_bits; int /*<<< orphan*/  key; } ;
struct nicvf {int /*<<< orphan*/  rx_queues; struct nicvf_rss_info rss_info; } ;

/* Variables and functions */
 scalar_t__ CPI_ALG_NONE ; 
 int /*<<< orphan*/  NIC_VNIC_RSS_CFG ; 
 int RSS_HASH_KEY_SIZE ; 
 int RSS_IP_HASH_ENA ; 
 int RSS_TCP_HASH_ENA ; 
 int RSS_UDP_HASH_ENA ; 
 scalar_t__ cpi_alg ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC4 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC5 (struct nicvf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct nicvf *nic)
{
	struct nicvf_rss_info *rss = &nic->rss_info;
	int idx;

	FUNC4(nic);

	if (cpi_alg != CPI_ALG_NONE) {
		rss->enable = false;
		rss->hash_bits = 0;
		return 0;
	}

	rss->enable = true;

	FUNC2(rss->key, RSS_HASH_KEY_SIZE * sizeof(u64));
	FUNC6(nic);

	rss->cfg = RSS_IP_HASH_ENA | RSS_TCP_HASH_ENA | RSS_UDP_HASH_ENA;
	FUNC5(nic, NIC_VNIC_RSS_CFG, rss->cfg);

	rss->hash_bits =  FUNC1(FUNC7(rss->rss_size));

	for (idx = 0; idx < rss->rss_size; idx++)
		rss->ind_tbl[idx] = FUNC0(idx,
							       nic->rx_queues);
	FUNC3(nic);
	return 1;
}