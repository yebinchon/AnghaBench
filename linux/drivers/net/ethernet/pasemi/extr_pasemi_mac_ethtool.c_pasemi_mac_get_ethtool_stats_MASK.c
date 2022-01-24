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
typedef  int u64 ;
struct pasemi_mac {int /*<<< orphan*/  dma_if; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PAS_DMA_RXINT_RCMDSTA_DROPS_S ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct pasemi_mac* FUNC2 (struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev,
		struct ethtool_stats *stats, u64 *data)
{
	struct pasemi_mac *mac = FUNC2(netdev);
	int i;

	data[0] = FUNC3(FUNC0(mac->dma_if))
			>> PAS_DMA_RXINT_RCMDSTA_DROPS_S;
	for (i = 0; i < 32; i++)
		data[1+i] = FUNC4(mac->dma_if, FUNC1(i));
}