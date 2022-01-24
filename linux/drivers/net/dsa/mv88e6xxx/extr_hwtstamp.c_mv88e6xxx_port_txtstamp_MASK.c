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
struct sk_buff {int dummy; } ;
struct mv88e6xxx_port_hwtstamp {int /*<<< orphan*/  tx_seq_id; int /*<<< orphan*/  tx_tstamp_start; struct sk_buff* tx_skb; int /*<<< orphan*/  state; } ;
struct mv88e6xxx_chip {int /*<<< orphan*/  ptp_clock; struct mv88e6xxx_port_hwtstamp* port_hwtstamp; } ;
struct dsa_switch {struct mv88e6xxx_chip* priv; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int tx_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MV88E6XXX_HWTSTAMP_TX_IN_PROGRESS ; 
 int OFF_PTP_SEQUENCE_ID ; 
 int SKBTX_HW_TSTAMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/ * FUNC1 (struct mv88e6xxx_chip*,int,struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC5(struct dsa_switch *ds, int port,
			     struct sk_buff *clone, unsigned int type)
{
	struct mv88e6xxx_chip *chip = ds->priv;
	struct mv88e6xxx_port_hwtstamp *ps = &chip->port_hwtstamp[port];
	__be16 *seq_ptr;
	u8 *hdr;

	if (!(FUNC3(clone)->tx_flags & SKBTX_HW_TSTAMP))
		return false;

	hdr = FUNC1(chip, port, clone, type);
	if (!hdr)
		return false;

	seq_ptr = (__be16 *)(hdr + OFF_PTP_SEQUENCE_ID);

	if (FUNC4(MV88E6XXX_HWTSTAMP_TX_IN_PROGRESS,
				  &ps->state))
		return false;

	ps->tx_skb = clone;
	ps->tx_tstamp_start = jiffies;
	ps->tx_seq_id = FUNC0(seq_ptr);

	FUNC2(chip->ptp_clock, 0);
	return true;
}