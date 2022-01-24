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
typedef  int u32 ;
struct altera_tse_private {int /*<<< orphan*/  rx_dma_resp; int /*<<< orphan*/  rx_dma_csr; } ;

/* Variables and functions */
 int /*<<< orphan*/  bytes_transferred ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  resp_fill_level ; 
 int /*<<< orphan*/  status ; 

u32 FUNC3(struct altera_tse_private *priv)
{
	u32 rxstatus = 0;
	u32 pktlength;
	u32 pktstatus;

	if (FUNC0(priv->rx_dma_csr, FUNC1(resp_fill_level))
	    & 0xffff) {
		pktlength = FUNC0(priv->rx_dma_resp,
				    FUNC2(bytes_transferred));
		pktstatus = FUNC0(priv->rx_dma_resp,
				    FUNC2(status));
		rxstatus = pktstatus;
		rxstatus = rxstatus << 16;
		rxstatus |= (pktlength & 0xffff);
	}
	return rxstatus;
}