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
typedef  int u8 ;
struct tx_packet_desc {int word3; } ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ csum_offset; } ;
struct atl1_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int TPD_CCSUMOFFSET_MASK ; 
 int TPD_CCSUMOFFSET_SHIFT ; 
 int TPD_CUST_CSUM_EN_SHIFT ; 
 int TPD_PLOADOFFSET_MASK ; 
 int TPD_PLOADOFFSET_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct atl1_adapter*) ; 
 int FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct atl1_adapter *adapter, struct sk_buff *skb,
	struct tx_packet_desc *ptpd)
{
	u8 css, cso;

	if (FUNC1(skb->ip_summed == CHECKSUM_PARTIAL)) {
		css = FUNC3(skb);
		cso = css + (u8) skb->csum_offset;
		if (FUNC4(css & 0x1)) {
			/* L1 hardware requires an even number here */
			if (FUNC2(adapter))
				FUNC0(KERN_DEBUG, &adapter->pdev->dev,
					"payload offset not an even number\n");
			return -1;
		}
		ptpd->word3 |= (css & TPD_PLOADOFFSET_MASK) <<
			TPD_PLOADOFFSET_SHIFT;
		ptpd->word3 |= (cso & TPD_CCSUMOFFSET_MASK) <<
			TPD_CCSUMOFFSET_SHIFT;
		ptpd->word3 |= 1 << TPD_CUST_CSUM_EN_SHIFT;
		return true;
	}
	return 0;
}