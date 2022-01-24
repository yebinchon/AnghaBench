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
typedef  int u32 ;
struct TYPE_2__ {int iq; int oq; } ;
struct octeon_device {TYPE_1__ io_qmask; } ;
struct net_device {int dummy; } ;
struct lio {int /*<<< orphan*/  netdev; struct octeon_device* oct_dev; } ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  ETH_GSTRING_LEN ; 
#define  ETH_SS_PRIV_FLAGS 129 
#define  ETH_SS_STATS 128 
 struct lio* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct octeon_device*) ; 
 int FUNC4 (struct octeon_device*) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC5 (struct lio*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct lio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char** oct_droq_stats_strings ; 
 char** oct_iq_stats_strings ; 
 char** oct_vf_stats_strings ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void FUNC8(struct net_device *netdev, u32 stringset,
			       u8 *data)
{
	int num_iq_stats, num_oq_stats, i, j;
	struct lio *lio = FUNC2(netdev);
	struct octeon_device *oct_dev = lio->oct_dev;
	int num_stats;

	switch (stringset) {
	case ETH_SS_STATS:
		num_stats = FUNC0(oct_vf_stats_strings);
		for (j = 0; j < num_stats; j++) {
			FUNC7(data, "%s", oct_vf_stats_strings[j]);
			data += ETH_GSTRING_LEN;
		}

		num_iq_stats = FUNC0(oct_iq_stats_strings);
		for (i = 0; i < FUNC3(oct_dev); i++) {
			if (!(oct_dev->io_qmask.iq & FUNC1(i)))
				continue;
			for (j = 0; j < num_iq_stats; j++) {
				FUNC7(data, "tx-%d-%s", i,
					oct_iq_stats_strings[j]);
				data += ETH_GSTRING_LEN;
			}
		}

		num_oq_stats = FUNC0(oct_droq_stats_strings);
		for (i = 0; i < FUNC4(oct_dev); i++) {
			if (!(oct_dev->io_qmask.oq & FUNC1(i)))
				continue;
			for (j = 0; j < num_oq_stats; j++) {
				FUNC7(data, "rx-%d-%s", i,
					oct_droq_stats_strings[j]);
				data += ETH_GSTRING_LEN;
			}
		}
		break;

	case ETH_SS_PRIV_FLAGS:
		FUNC5(lio, data);
		break;
	default:
		FUNC6(lio, drv, lio->netdev, "Unknown Stringset !!\n");
		break;
	}
}