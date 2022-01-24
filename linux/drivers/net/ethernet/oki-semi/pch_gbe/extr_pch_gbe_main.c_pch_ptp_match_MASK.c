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
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  seqid ;
typedef  int /*<<< orphan*/  lo ;

/* Variables and functions */
 unsigned int ETH_HLEN ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ OFF_PTP_SEQUENCE_ID ; 
 int OFF_PTP_SOURCE_UUID ; 
 scalar_t__ PTP_CLASS_NONE ; 
 unsigned int UDP_HLEN ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*,int) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, u16 uid_hi, u32 uid_lo, u16 seqid)
{
	u8 *data = skb->data;
	unsigned int offset;
	u16 *hi, *id;
	u32 lo;

	if (FUNC2(skb) == PTP_CLASS_NONE)
		return 0;

	offset = ETH_HLEN + FUNC0(data) + UDP_HLEN;

	if (skb->len < offset + OFF_PTP_SEQUENCE_ID + sizeof(seqid))
		return 0;

	hi = (u16 *)(data + offset + OFF_PTP_SOURCE_UUID);
	id = (u16 *)(data + offset + OFF_PTP_SEQUENCE_ID);

	FUNC1(&lo, &hi[1], sizeof(lo));

	return (uid_hi == *hi &&
		uid_lo == lo &&
		seqid  == *id);
}