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
struct octeon_device {int num_iqs; int num_oqs; } ;
struct net_device {int dummy; } ;
struct lio {struct octeon_device* oct_dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EOPNOTSUPP ; 
#define  ETH_SS_PRIV_FLAGS 129 
#define  ETH_SS_STATS 128 
 struct lio* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct lio*) ; 
 int /*<<< orphan*/  oct_droq_stats_strings ; 
 int /*<<< orphan*/  oct_iq_stats_strings ; 
 int /*<<< orphan*/  oct_stats_strings ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev, int sset)
{
	struct lio *lio = FUNC1(netdev);
	struct octeon_device *oct_dev = lio->oct_dev;

	switch (sset) {
	case ETH_SS_STATS:
		return (FUNC0(oct_stats_strings) +
			FUNC0(oct_iq_stats_strings) * oct_dev->num_iqs +
			FUNC0(oct_droq_stats_strings) * oct_dev->num_oqs);
	case ETH_SS_PRIV_FLAGS:
		return FUNC2(lio);
	default:
		return -EOPNOTSUPP;
	}
}