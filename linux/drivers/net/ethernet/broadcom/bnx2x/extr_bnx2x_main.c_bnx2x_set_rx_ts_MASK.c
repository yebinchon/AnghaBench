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
typedef  int u64 ;
struct sk_buff {int dummy; } ;
struct bnx2x {int /*<<< orphan*/  timecounter; } ;
struct TYPE_2__ {int /*<<< orphan*/  hwtstamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_PTP ; 
 int FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  NIG_REG_P0_LLH_PTP_HOST_BUF_SEQID ; 
 int /*<<< orphan*/  NIG_REG_P0_LLH_PTP_HOST_BUF_TS_LSB ; 
 int /*<<< orphan*/  NIG_REG_P0_LLH_PTP_HOST_BUF_TS_MSB ; 
 int /*<<< orphan*/  NIG_REG_P1_LLH_PTP_HOST_BUF_SEQID ; 
 int /*<<< orphan*/  NIG_REG_P1_LLH_PTP_HOST_BUF_TS_LSB ; 
 int /*<<< orphan*/  NIG_REG_P1_LLH_PTP_HOST_BUF_TS_MSB ; 
 int FUNC2 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 

void FUNC7(struct bnx2x *bp, struct sk_buff *skb)
{
	int port = FUNC0(bp);
	u64 timestamp, ns;

	timestamp = FUNC2(bp, port ? NIG_REG_P1_LLH_PTP_HOST_BUF_TS_MSB :
			    NIG_REG_P0_LLH_PTP_HOST_BUF_TS_MSB);
	timestamp <<= 32;
	timestamp |= FUNC2(bp, port ? NIG_REG_P1_LLH_PTP_HOST_BUF_TS_LSB :
			    NIG_REG_P0_LLH_PTP_HOST_BUF_TS_LSB);

	/* Reset timestamp register to allow new timestamp */
	FUNC3(bp, port ? NIG_REG_P1_LLH_PTP_HOST_BUF_SEQID :
	       NIG_REG_P0_LLH_PTP_HOST_BUF_SEQID, 0x10000);

	ns = FUNC6(&bp->timecounter, timestamp);

	FUNC5(skb)->hwtstamp = FUNC4(ns);

	FUNC1(BNX2X_MSG_PTP, "Rx timestamp, timestamp cycles = %llu, ns = %llu\n",
	   timestamp, ns);
}