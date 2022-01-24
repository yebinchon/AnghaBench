#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct brcmf_pub {TYPE_1__* proto; } ;
struct brcmf_msgbuf {int ctl_completed; scalar_t__ ioctl_resp_ret_len; int ioctl_resp_status; int /*<<< orphan*/  ioctl_resp_pktid; int /*<<< orphan*/  rx_pktids; TYPE_3__* drvr; } ;
struct TYPE_6__ {TYPE_2__* bus_if; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ pd; } ;

/* Variables and functions */
 int EBADF ; 
 int EIO ; 
 int /*<<< orphan*/  MSGBUF ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,scalar_t__,scalar_t__) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct brcmf_msgbuf*) ; 
 int FUNC4 (struct brcmf_pub*,int,scalar_t__,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct brcmf_pub *drvr, int ifidx,
				   uint cmd, void *buf, uint len, int *fwerr)
{
	struct brcmf_msgbuf *msgbuf = (struct brcmf_msgbuf *)drvr->proto->pd;
	struct sk_buff *skb = NULL;
	int timeout;
	int err;

	FUNC1(MSGBUF, "ifidx=%d, cmd=%d, len=%d\n", ifidx, cmd, len);
	*fwerr = 0;
	msgbuf->ctl_completed = false;
	err = FUNC4(drvr, ifidx, cmd, buf, len);
	if (err)
		return err;

	timeout = FUNC3(msgbuf);
	if (!timeout) {
		FUNC0(drvr, "Timeout on response for query command\n");
		return -EIO;
	}

	skb = FUNC2(msgbuf->drvr->bus_if->dev,
				     msgbuf->rx_pktids,
				     msgbuf->ioctl_resp_pktid);
	if (msgbuf->ioctl_resp_ret_len != 0) {
		if (!skb)
			return -EBADF;

		FUNC6(buf, skb->data, (len < msgbuf->ioctl_resp_ret_len) ?
				       len : msgbuf->ioctl_resp_ret_len);
	}
	FUNC5(skb);

	*fwerr = msgbuf->ioctl_resp_status;
	return 0;
}