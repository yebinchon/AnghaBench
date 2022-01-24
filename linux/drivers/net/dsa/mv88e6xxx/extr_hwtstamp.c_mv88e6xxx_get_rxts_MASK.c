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
typedef  int u16 ;
struct skb_shared_hwtstamps {int /*<<< orphan*/  hwtstamp; } ;
struct sk_buff_head {int /*<<< orphan*/  lock; } ;
struct sk_buff {int dummy; } ;
struct mv88e6xxx_port_hwtstamp {int /*<<< orphan*/  port_id; } ;
struct mv88e6xxx_chip {int /*<<< orphan*/  tstamp_tc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int MV88E6XXX_PTP_TS_VALID ; 
 struct sk_buff* FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct skb_shared_hwtstamps*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct mv88e6xxx_chip*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (struct sk_buff*,int) ; 
 struct skb_shared_hwtstamps* FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff_head*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC17 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC18(struct mv88e6xxx_chip *chip,
			       struct mv88e6xxx_port_hwtstamp *ps,
			       struct sk_buff *skb, u16 reg,
			       struct sk_buff_head *rxq)
{
	u16 buf[4] = { 0 }, status, seq_id;
	struct skb_shared_hwtstamps *shwt;
	struct sk_buff_head received;
	u64 ns, timelo, timehi;
	unsigned long flags;
	int err;

	/* The latched timestamp belongs to one of the received frames. */
	FUNC2(&received);
	FUNC15(&rxq->lock, flags);
	FUNC14(rxq, &received);
	FUNC16(&rxq->lock, flags);

	FUNC6(chip);
	err = FUNC4(chip, ps->port_id,
				      reg, buf, FUNC0(buf));
	FUNC7(chip);
	if (err)
		FUNC11("failed to get the receive time stamp\n");

	status = buf[0];
	timelo = buf[1];
	timehi = buf[2];
	seq_id = buf[3];

	if (status & MV88E6XXX_PTP_TS_VALID) {
		FUNC6(chip);
		err = FUNC5(chip, ps->port_id, reg, 0);
		FUNC7(chip);
		if (err)
			FUNC11("failed to clear the receive status\n");
	}
	/* Since the device can only handle one time stamp at a time,
	 * we purge any extra frames from the queue.
	 */
	for ( ; skb; skb = FUNC1(&received)) {
		if (FUNC8(status) && FUNC12(skb, seq_id)) {
			ns = timehi << 16 | timelo;

			FUNC6(chip);
			ns = FUNC17(&chip->tstamp_tc, ns);
			FUNC7(chip);
			shwt = FUNC13(skb);
			FUNC3(shwt, 0, sizeof(*shwt));
			shwt->hwtstamp = FUNC10(ns);
			status &= ~MV88E6XXX_PTP_TS_VALID;
		}
		FUNC9(skb);
	}
}