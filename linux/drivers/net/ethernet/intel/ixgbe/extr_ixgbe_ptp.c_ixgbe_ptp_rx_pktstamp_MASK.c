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
struct sk_buff {scalar_t__ len; } ;
struct ixgbe_q_vector {int /*<<< orphan*/  adapter; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 scalar_t__ IXGBE_TS_HDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 

void FUNC5(struct ixgbe_q_vector *q_vector,
			   struct sk_buff *skb)
{
	__le64 regval;

	/* copy the bits out of the skb, and then trim the skb length */
	FUNC3(skb, skb->len - IXGBE_TS_HDR_LEN, &regval,
		      IXGBE_TS_HDR_LEN);
	FUNC0(skb, skb->len - IXGBE_TS_HDR_LEN);

	/* The timestamp is recorded in little endian format, and is stored at
	 * the end of the packet.
	 *
	 * DWORD: N              N + 1      N + 2
	 * Field: End of Packet  SYSTIMH    SYSTIML
	 */
	FUNC1(q_vector->adapter, FUNC4(skb),
				      FUNC2(regval));
}