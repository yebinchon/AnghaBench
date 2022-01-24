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
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ena_stats {int /*<<< orphan*/  name; } ;
struct ena_adapter {int dummy; } ;

/* Variables and functions */
 int ENA_STATS_ARRAY_GLOBAL ; 
 int /*<<< orphan*/  ETH_GSTRING_LEN ; 
 scalar_t__ ETH_SS_STATS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (struct ena_adapter*,int /*<<< orphan*/ **) ; 
 struct ena_stats* ena_stats_global_strings ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ena_adapter* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *netdev, u32 sset, u8 *data)
{
	struct ena_adapter *adapter = FUNC3(netdev);
	const struct ena_stats *ena_stats;
	int i;

	if (sset != ETH_SS_STATS)
		return;

	for (i = 0; i < ENA_STATS_ARRAY_GLOBAL; i++) {
		ena_stats = &ena_stats_global_strings[i];

		FUNC2(data, ena_stats->name, ETH_GSTRING_LEN);
		data += ETH_GSTRING_LEN;
	}

	FUNC1(adapter, &data);
	FUNC0(&data);
}