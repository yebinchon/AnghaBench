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
typedef  size_t u32 ;
struct brcmf_msgbuf {int /*<<< orphan*/  txflow_work; int /*<<< orphan*/  txflow_wq; struct brcmf_commonring** flowrings; int /*<<< orphan*/  flow_map; } ;
struct brcmf_commonring {int /*<<< orphan*/  outstanding_tx; } ;

/* Variables and functions */
 scalar_t__ BRCMF_MSGBUF_DELAY_TXWORKER_THRS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct brcmf_msgbuf *msgbuf, u32 flowid,
					bool force)
{
	struct brcmf_commonring *commonring;

	FUNC2(flowid, msgbuf->flow_map);
	commonring = msgbuf->flowrings[flowid];
	if ((force) || (FUNC0(&commonring->outstanding_tx) <
			BRCMF_MSGBUF_DELAY_TXWORKER_THRS))
		FUNC1(msgbuf->txflow_wq, &msgbuf->txflow_work);

	return 0;
}