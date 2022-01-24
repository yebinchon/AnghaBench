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
typedef  int u32 ;
struct ocelot {int num_phys_ports; int num_stats; int /*<<< orphan*/  dev; scalar_t__ ptp; int /*<<< orphan*/  stats_work; int /*<<< orphan*/  stats_queue; int /*<<< orphan*/ * regfields; int /*<<< orphan*/  ptp_clock_lock; int /*<<< orphan*/  ptp_lock; int /*<<< orphan*/  stats_lock; void* stats; void* lags; } ;
typedef  int /*<<< orphan*/  queue_name ;

/* Variables and functions */
 size_t ANA_ADVLEARN_VLAN_CHK ; 
 int /*<<< orphan*/  ANA_AGGR_CFG ; 
 int ANA_AGGR_CFG_AC_DMAC_ENA ; 
 int ANA_AGGR_CFG_AC_IP4_SIPDIP_ENA ; 
 int ANA_AGGR_CFG_AC_IP4_TCPUDP_ENA ; 
 int ANA_AGGR_CFG_AC_SMAC_ENA ; 
 int /*<<< orphan*/  ANA_AUTOAGE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  ANA_CPUQ_8021_CFG ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  ANA_CPUQ_CFG ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  ANA_FLOODING ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ANA_FLOODING_IPMC ; 
 int FUNC15 (int) ; 
 int FUNC16 (int) ; 
 int FUNC17 (int) ; 
 int FUNC18 (int) ; 
 int /*<<< orphan*/  ANA_PGID_PGID ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ANA_PORT_CPU_FWD_BPDU_CFG ; 
 int FUNC20 (int) ; 
 int /*<<< orphan*/  ANA_PORT_PORT_CFG ; 
 int FUNC21 (int) ; 
 int ANA_PORT_PORT_CFG_RECV_ENA ; 
 int FUNC22 (int) ; 
 int BR_DEFAULT_AGEING_TIME ; 
 int ENOMEM ; 
 int ETH_P_8021AD ; 
 int /*<<< orphan*/  FUNC23 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCELOT_STATS_CHECK_DELAY ; 
 int PGID_CPU ; 
 int PGID_MC ; 
 int PGID_MCIPV4 ; 
 int PGID_MCIPV6 ; 
 int PGID_SRC ; 
 int /*<<< orphan*/  PGID_UC ; 
 int /*<<< orphan*/  QSYS_SWITCH_PORT_MODE ; 
 int QSYS_SWITCH_PORT_MODE_INGRESS_DROP_MODE ; 
 int QSYS_SWITCH_PORT_MODE_PORT_ENA ; 
 int FUNC25 (int) ; 
 int /*<<< orphan*/  QS_INJ_GRP_CFG ; 
 int QS_INJ_GRP_CFG_BYTE_SWAP ; 
 int FUNC26 (int) ; 
 int /*<<< orphan*/  QS_XTR_GRP_CFG ; 
 int QS_XTR_GRP_CFG_BYTE_SWAP ; 
 int FUNC27 (int) ; 
 int /*<<< orphan*/  SYS_FRM_AGING ; 
 int SYS_FRM_AGING_AGE_TX_ENA ; 
 int FUNC28 (int) ; 
 int /*<<< orphan*/  SYS_PORT_MODE ; 
 int FUNC29 (int) ; 
 int FUNC30 (int) ; 
 int /*<<< orphan*/  SYS_STAT_CFG ; 
 int FUNC31 (int) ; 
 int FUNC32 (int) ; 
 int /*<<< orphan*/  SYS_VLAN_ETYPE_CFG ; 
 int /*<<< orphan*/  FUNC33 (char*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC35 (int /*<<< orphan*/ ) ; 
 void* FUNC36 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 (struct ocelot*) ; 
 int /*<<< orphan*/  ocelot_check_stats_work ; 
 int FUNC39 (struct ocelot*) ; 
 int /*<<< orphan*/  FUNC40 (struct ocelot*) ; 
 int /*<<< orphan*/  FUNC41 (struct ocelot*) ; 
 int /*<<< orphan*/  FUNC42 (struct ocelot*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (struct ocelot*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC44 (struct ocelot*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC47 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ *) ; 

int FUNC49(struct ocelot *ocelot)
{
	u32 port;
	int i, ret, cpu = ocelot->num_phys_ports;
	char queue_name[32];

	ocelot->lags = FUNC36(ocelot->dev, ocelot->num_phys_ports,
				    sizeof(u32), GFP_KERNEL);
	if (!ocelot->lags)
		return -ENOMEM;

	ocelot->stats = FUNC36(ocelot->dev,
				     ocelot->num_phys_ports * ocelot->num_stats,
				     sizeof(u64), GFP_KERNEL);
	if (!ocelot->stats)
		return -ENOMEM;

	FUNC37(&ocelot->stats_lock);
	FUNC37(&ocelot->ptp_lock);
	FUNC48(&ocelot->ptp_clock_lock);
	FUNC47(queue_name, sizeof(queue_name), "%s-stats",
		 FUNC35(ocelot->dev));
	ocelot->stats_queue = FUNC33(queue_name);
	if (!ocelot->stats_queue)
		return -ENOMEM;

	FUNC40(ocelot);
	FUNC41(ocelot);
	FUNC38(ocelot);

	for (port = 0; port < ocelot->num_phys_ports; port++) {
		/* Clear all counters (5 groups) */
		FUNC42(ocelot, FUNC32(port) |
				     FUNC31(0x7f),
			     SYS_STAT_CFG);
	}

	/* Only use S-Tag */
	FUNC42(ocelot, ETH_P_8021AD, SYS_VLAN_ETYPE_CFG);

	/* Aggregation mode */
	FUNC42(ocelot, ANA_AGGR_CFG_AC_SMAC_ENA |
			     ANA_AGGR_CFG_AC_DMAC_ENA |
			     ANA_AGGR_CFG_AC_IP4_SIPDIP_ENA |
			     ANA_AGGR_CFG_AC_IP4_TCPUDP_ENA, ANA_AGGR_CFG);

	/* Set MAC age time to default value. The entry is aged after
	 * 2*AGE_PERIOD
	 */
	FUNC42(ocelot,
		     FUNC0(BR_DEFAULT_AGEING_TIME / 2 / HZ),
		     ANA_AUTOAGE);

	/* Disable learning for frames discarded by VLAN ingress filtering */
	FUNC46(ocelot->regfields[ANA_ADVLEARN_VLAN_CHK], 1);

	/* Setup frame ageing - fixed value "2 sec" - in 6.5 us units */
	FUNC42(ocelot, SYS_FRM_AGING_AGE_TX_ENA |
		     FUNC28(307692), SYS_FRM_AGING);

	/* Setup flooding PGIDs */
	FUNC44(ocelot, FUNC13(PGID_MC) |
			 FUNC12(PGID_MC) |
			 FUNC14(PGID_UC),
			 ANA_FLOODING, 0);
	FUNC42(ocelot, FUNC18(PGID_MCIPV6) |
		     FUNC17(PGID_MC) |
		     FUNC16(PGID_MCIPV4) |
		     FUNC15(PGID_MC),
		     ANA_FLOODING_IPMC);

	for (port = 0; port < ocelot->num_phys_ports; port++) {
		/* Transmit the frame to the local port. */
		FUNC44(ocelot, FUNC22(port), ANA_PGID_PGID, port);
		/* Do not forward BPDU frames to the front ports. */
		FUNC43(ocelot,
				 FUNC20(0xffff),
				 ANA_PORT_CPU_FWD_BPDU_CFG,
				 port);
		/* Ensure bridging is disabled */
		FUNC44(ocelot, 0, ANA_PGID_PGID, PGID_SRC + port);
	}

	/* Configure and enable the CPU port. */
	FUNC44(ocelot, 0, ANA_PGID_PGID, cpu);
	FUNC44(ocelot, FUNC22(cpu), ANA_PGID_PGID, PGID_CPU);
	FUNC43(ocelot, ANA_PORT_PORT_CFG_RECV_ENA |
			 FUNC21(cpu),
			 ANA_PORT_PORT_CFG, cpu);

	/* Allow broadcast MAC frames. */
	for (i = ocelot->num_phys_ports + 1; i < PGID_CPU; i++) {
		u32 val = FUNC19(FUNC23(ocelot->num_phys_ports - 1, 0));

		FUNC44(ocelot, val, ANA_PGID_PGID, i);
	}
	FUNC44(ocelot,
			 FUNC19(FUNC23(ocelot->num_phys_ports, 0)),
			 ANA_PGID_PGID, PGID_MC);
	FUNC44(ocelot, 0, ANA_PGID_PGID, PGID_MCIPV4);
	FUNC44(ocelot, 0, ANA_PGID_PGID, PGID_MCIPV6);

	/* CPU port Injection/Extraction configuration */
	FUNC44(ocelot, QSYS_SWITCH_PORT_MODE_INGRESS_DROP_MODE |
			 FUNC25(1) |
			 QSYS_SWITCH_PORT_MODE_PORT_ENA,
			 QSYS_SWITCH_PORT_MODE, cpu);
	FUNC44(ocelot, FUNC30(1) |
			 FUNC29(1), SYS_PORT_MODE, cpu);
	/* Allow manual injection via DEVCPU_QS registers, and byte swap these
	 * registers endianness.
	 */
	FUNC44(ocelot, QS_INJ_GRP_CFG_BYTE_SWAP |
			 FUNC26(1), QS_INJ_GRP_CFG, 0);
	FUNC44(ocelot, QS_XTR_GRP_CFG_BYTE_SWAP |
			 FUNC27(1), QS_XTR_GRP_CFG, 0);
	FUNC42(ocelot, FUNC9(2) |
		     FUNC7(2) |
		     FUNC8(2) |
		     FUNC11(2) |
		     FUNC6(2) |
		     FUNC3(6) |
		     FUNC5(6) |
		     FUNC4(6) |
		     FUNC10(6), ANA_CPUQ_CFG);
	for (i = 0; i < 16; i++)
		FUNC44(ocelot, FUNC2(6) |
				 FUNC1(6),
				 ANA_CPUQ_8021_CFG, i);

	FUNC24(&ocelot->stats_work, ocelot_check_stats_work);
	FUNC45(ocelot->stats_queue, &ocelot->stats_work,
			   OCELOT_STATS_CHECK_DELAY);

	if (ocelot->ptp) {
		ret = FUNC39(ocelot);
		if (ret) {
			FUNC34(ocelot->dev,
				"Timestamp initialization failed\n");
			return ret;
		}
	}

	return 0;
}