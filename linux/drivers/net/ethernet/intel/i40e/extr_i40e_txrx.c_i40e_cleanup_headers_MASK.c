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
typedef  union i40e_rx_desc {int dummy; } i40e_rx_desc ;
struct sk_buff {int dummy; } ;
struct i40e_ring {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I40E_RXD_QW1_ERROR_SHIFT ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (union i40e_rx_desc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct i40e_ring *rx_ring, struct sk_buff *skb,
				 union i40e_rx_desc *rx_desc)

{
	/* XDP packets use error pointer so abort at this point */
	if (FUNC1(skb))
		return true;

	/* ERR_MASK will only have valid bits if EOP set, and
	 * what we are doing here is actually checking
	 * I40E_RX_DESC_ERROR_RXE_SHIFT, since it is the zeroth bit in
	 * the error field
	 */
	if (FUNC5(FUNC4(rx_desc,
				       FUNC0(I40E_RXD_QW1_ERROR_SHIFT)))) {
		FUNC2(skb);
		return true;
	}

	/* if eth_skb_pad returns an error the skb was freed */
	if (FUNC3(skb))
		return true;

	return false;
}