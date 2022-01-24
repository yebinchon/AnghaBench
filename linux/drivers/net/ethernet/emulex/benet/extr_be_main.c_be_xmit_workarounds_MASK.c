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
struct sk_buff {int len; } ;
struct be_wrb_params {int dummy; } ;
struct be_adapter {int dummy; } ;

/* Variables and functions */
 int BE_MAX_GSO_SIZE ; 
 scalar_t__ FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct sk_buff* FUNC3 (struct be_adapter*,struct sk_buff*,struct be_wrb_params*) ; 
 scalar_t__ FUNC4 (struct be_adapter*) ; 
 int FUNC5 (struct sk_buff*,int) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int) ; 

__attribute__((used)) static struct sk_buff *FUNC7(struct be_adapter *adapter,
					   struct sk_buff *skb,
					   struct be_wrb_params *wrb_params)
{
	int err;

	/* Lancer, SH and BE3 in SRIOV mode have a bug wherein
	 * packets that are 32b or less may cause a transmit stall
	 * on that port. The workaround is to pad such packets
	 * (len <= 32 bytes) to a minimum length of 36b.
	 */
	if (skb->len <= 32) {
		if (FUNC6(skb, 36))
			return NULL;
	}

	if (FUNC0(adapter) || FUNC4(adapter)) {
		skb = FUNC3(adapter, skb, wrb_params);
		if (!skb)
			return NULL;
	}

	/* The stack can send us skbs with length greater than
	 * what the HW can handle. Trim the extra bytes.
	 */
	FUNC2(skb->len > BE_MAX_GSO_SIZE);
	err = FUNC5(skb, BE_MAX_GSO_SIZE);
	FUNC1(err);

	return skb;
}