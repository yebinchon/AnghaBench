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
struct nicvf {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {scalar_t__ version; } ;

/* Variables and functions */
 int MAX_CMP_QUEUES_PER_QS ; 
 int MAX_RCV_BUF_DESC_RINGS_PER_QS ; 
 int MAX_RCV_QUEUES_PER_QS ; 
 int MAX_SND_QUEUES_PER_QS ; 
 int NIC_PF_VF_MAILBOX_SIZE ; 
 int NIC_QSET_CQ_0_7_BASE ; 
 int NIC_QSET_CQ_0_7_CFG ; 
 int NIC_QSET_CQ_0_7_CFG2 ; 
 int NIC_QSET_CQ_0_7_DEBUG ; 
 int NIC_QSET_CQ_0_7_DOOR ; 
 int NIC_QSET_CQ_0_7_HEAD ; 
 int NIC_QSET_CQ_0_7_STATUS ; 
 int NIC_QSET_CQ_0_7_STATUS2 ; 
 int NIC_QSET_CQ_0_7_TAIL ; 
 int NIC_QSET_CQ_0_7_THRESH ; 
 int NIC_QSET_RBDR_0_1_BASE ; 
 int NIC_QSET_RBDR_0_1_CFG ; 
 int NIC_QSET_RBDR_0_1_DOOR ; 
 int NIC_QSET_RBDR_0_1_HEAD ; 
 int NIC_QSET_RBDR_0_1_PREFETCH_STATUS ; 
 int NIC_QSET_RBDR_0_1_STATUS0 ; 
 int NIC_QSET_RBDR_0_1_STATUS1 ; 
 int NIC_QSET_RBDR_0_1_TAIL ; 
 int NIC_QSET_RBDR_0_1_THRESH ; 
 int NIC_QSET_RQ_0_7_CFG ; 
 int NIC_QSET_RQ_0_7_STAT_0_1 ; 
 int NIC_QSET_RQ_GEN_CFG ; 
 int NIC_QSET_SQ_0_7_BASE ; 
 int NIC_QSET_SQ_0_7_CFG ; 
 int NIC_QSET_SQ_0_7_DEBUG ; 
 int NIC_QSET_SQ_0_7_DOOR ; 
 int NIC_QSET_SQ_0_7_HEAD ; 
 int NIC_QSET_SQ_0_7_STATUS ; 
 int NIC_QSET_SQ_0_7_STAT_0_1 ; 
 int NIC_QSET_SQ_0_7_TAIL ; 
 int NIC_QSET_SQ_0_7_THRESH ; 
 int NIC_VF_ENA_W1C ; 
 int NIC_VF_ENA_W1S ; 
 int NIC_VF_INT ; 
 int NIC_VF_INT_W1S ; 
 int NIC_VF_PF_MAILBOX_0_1 ; 
 int /*<<< orphan*/  NIC_VF_REG_COUNT ; 
 int NIC_VNIC_CFG ; 
 int NIC_VNIC_RSS_CFG ; 
 int NIC_VNIC_RSS_KEY_0_4 ; 
 int NIC_VNIC_RX_STAT_0_13 ; 
 int NIC_VNIC_TX_STAT_0_4 ; 
 int RSS_HASH_KEY_SIZE ; 
 int RX_STATS_ENUM_LAST ; 
 int TX_STATS_ENUM_LAST ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nicvf* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct nicvf*,int,int) ; 
 int FUNC3 (struct nicvf*,int) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev,
			   struct ethtool_regs *regs, void *reg)
{
	struct nicvf *nic = FUNC1(dev);
	u64 *p = (u64 *)reg;
	u64 reg_offset;
	int mbox, key, stat, q;
	int i = 0;

	regs->version = 0;
	FUNC0(p, 0, NIC_VF_REG_COUNT);

	p[i++] = FUNC3(nic, NIC_VNIC_CFG);
	/* Mailbox registers */
	for (mbox = 0; mbox < NIC_PF_VF_MAILBOX_SIZE; mbox++)
		p[i++] = FUNC3(nic,
					NIC_VF_PF_MAILBOX_0_1 | (mbox << 3));

	p[i++] = FUNC3(nic, NIC_VF_INT);
	p[i++] = FUNC3(nic, NIC_VF_INT_W1S);
	p[i++] = FUNC3(nic, NIC_VF_ENA_W1C);
	p[i++] = FUNC3(nic, NIC_VF_ENA_W1S);
	p[i++] = FUNC3(nic, NIC_VNIC_RSS_CFG);

	for (key = 0; key < RSS_HASH_KEY_SIZE; key++)
		p[i++] = FUNC3(nic, NIC_VNIC_RSS_KEY_0_4 | (key << 3));

	/* Tx/Rx statistics */
	for (stat = 0; stat < TX_STATS_ENUM_LAST; stat++)
		p[i++] = FUNC3(nic,
					NIC_VNIC_TX_STAT_0_4 | (stat << 3));

	for (i = 0; i < RX_STATS_ENUM_LAST; i++)
		p[i++] = FUNC3(nic,
					NIC_VNIC_RX_STAT_0_13 | (stat << 3));

	p[i++] = FUNC3(nic, NIC_QSET_RQ_GEN_CFG);

	/* All completion queue's registers */
	for (q = 0; q < MAX_CMP_QUEUES_PER_QS; q++) {
		p[i++] = FUNC2(nic, NIC_QSET_CQ_0_7_CFG, q);
		p[i++] = FUNC2(nic, NIC_QSET_CQ_0_7_CFG2, q);
		p[i++] = FUNC2(nic, NIC_QSET_CQ_0_7_THRESH, q);
		p[i++] = FUNC2(nic, NIC_QSET_CQ_0_7_BASE, q);
		p[i++] = FUNC2(nic, NIC_QSET_CQ_0_7_HEAD, q);
		p[i++] = FUNC2(nic, NIC_QSET_CQ_0_7_TAIL, q);
		p[i++] = FUNC2(nic, NIC_QSET_CQ_0_7_DOOR, q);
		p[i++] = FUNC2(nic, NIC_QSET_CQ_0_7_STATUS, q);
		p[i++] = FUNC2(nic, NIC_QSET_CQ_0_7_STATUS2, q);
		p[i++] = FUNC2(nic, NIC_QSET_CQ_0_7_DEBUG, q);
	}

	/* All receive queue's registers */
	for (q = 0; q < MAX_RCV_QUEUES_PER_QS; q++) {
		p[i++] = FUNC2(nic, NIC_QSET_RQ_0_7_CFG, q);
		p[i++] = FUNC2(nic,
						  NIC_QSET_RQ_0_7_STAT_0_1, q);
		reg_offset = NIC_QSET_RQ_0_7_STAT_0_1 | (1 << 3);
		p[i++] = FUNC2(nic, reg_offset, q);
	}

	for (q = 0; q < MAX_SND_QUEUES_PER_QS; q++) {
		p[i++] = FUNC2(nic, NIC_QSET_SQ_0_7_CFG, q);
		p[i++] = FUNC2(nic, NIC_QSET_SQ_0_7_THRESH, q);
		p[i++] = FUNC2(nic, NIC_QSET_SQ_0_7_BASE, q);
		p[i++] = FUNC2(nic, NIC_QSET_SQ_0_7_HEAD, q);
		p[i++] = FUNC2(nic, NIC_QSET_SQ_0_7_TAIL, q);
		p[i++] = FUNC2(nic, NIC_QSET_SQ_0_7_DOOR, q);
		p[i++] = FUNC2(nic, NIC_QSET_SQ_0_7_STATUS, q);
		p[i++] = FUNC2(nic, NIC_QSET_SQ_0_7_DEBUG, q);
		/* Padding, was NIC_QSET_SQ_0_7_CNM_CHG, which
		 * produces bus errors when read
		 */
		p[i++] = 0;
		p[i++] = FUNC2(nic, NIC_QSET_SQ_0_7_STAT_0_1, q);
		reg_offset = NIC_QSET_SQ_0_7_STAT_0_1 | (1 << 3);
		p[i++] = FUNC2(nic, reg_offset, q);
	}

	for (q = 0; q < MAX_RCV_BUF_DESC_RINGS_PER_QS; q++) {
		p[i++] = FUNC2(nic, NIC_QSET_RBDR_0_1_CFG, q);
		p[i++] = FUNC2(nic, NIC_QSET_RBDR_0_1_THRESH, q);
		p[i++] = FUNC2(nic, NIC_QSET_RBDR_0_1_BASE, q);
		p[i++] = FUNC2(nic, NIC_QSET_RBDR_0_1_HEAD, q);
		p[i++] = FUNC2(nic, NIC_QSET_RBDR_0_1_TAIL, q);
		p[i++] = FUNC2(nic, NIC_QSET_RBDR_0_1_DOOR, q);
		p[i++] = FUNC2(nic,
					      NIC_QSET_RBDR_0_1_STATUS0, q);
		p[i++] = FUNC2(nic,
					      NIC_QSET_RBDR_0_1_STATUS1, q);
		reg_offset = NIC_QSET_RBDR_0_1_PREFETCH_STATUS;
		p[i++] = FUNC2(nic, reg_offset, q);
	}
}