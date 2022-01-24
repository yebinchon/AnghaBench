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
typedef  scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int OFF_PTP_SEQUENCE_ID ; 
 unsigned int FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct sk_buff*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, u16 ts_seqid)
{
	unsigned int type = FUNC0(skb);
	u8 *hdr = FUNC2(skb, type);
	__be16 *seqid;

	seqid = (__be16 *)(hdr + OFF_PTP_SEQUENCE_ID);

	return ts_seqid == FUNC1(*seqid);
}