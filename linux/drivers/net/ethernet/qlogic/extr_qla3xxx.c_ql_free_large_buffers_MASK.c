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
struct ql_rcv_buf_cb {scalar_t__ skb; } ;
struct ql3_adapter {int num_large_buffers; int /*<<< orphan*/  pdev; struct ql_rcv_buf_cb* lrg_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ql_rcv_buf_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ql_rcv_buf_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mapaddr ; 
 int /*<<< orphan*/  maplen ; 
 int /*<<< orphan*/  FUNC3 (struct ql_rcv_buf_cb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ql3_adapter *qdev)
{
	int i = 0;
	struct ql_rcv_buf_cb *lrg_buf_cb;

	for (i = 0; i < qdev->num_large_buffers; i++) {
		lrg_buf_cb = &qdev->lrg_buf[i];
		if (lrg_buf_cb->skb) {
			FUNC0(lrg_buf_cb->skb);
			FUNC4(qdev->pdev,
					 FUNC1(lrg_buf_cb, mapaddr),
					 FUNC2(lrg_buf_cb, maplen),
					 PCI_DMA_FROMDEVICE);
			FUNC3(lrg_buf_cb, 0, sizeof(struct ql_rcv_buf_cb));
		} else {
			break;
		}
	}
}