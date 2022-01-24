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
struct msgbuf_common_hdr {int msgtype; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_msgbuf {struct brcmf_pub* drvr; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSGBUF ; 
#define  MSGBUF_TYPE_FLOW_RING_CREATE_CMPLT 136 
#define  MSGBUF_TYPE_FLOW_RING_DELETE_CMPLT 135 
#define  MSGBUF_TYPE_GEN_STATUS 134 
#define  MSGBUF_TYPE_IOCTLPTR_REQ_ACK 133 
#define  MSGBUF_TYPE_IOCTL_CMPLT 132 
#define  MSGBUF_TYPE_RING_STATUS 131 
#define  MSGBUF_TYPE_RX_CMPLT 130 
#define  MSGBUF_TYPE_TX_STATUS 129 
#define  MSGBUF_TYPE_WL_EVENT 128 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_msgbuf*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_msgbuf*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_msgbuf*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmf_msgbuf*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct brcmf_msgbuf*,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct brcmf_msgbuf*,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct brcmf_msgbuf*,void*) ; 
 int /*<<< orphan*/  FUNC9 (struct brcmf_msgbuf*,void*) ; 

__attribute__((used)) static void FUNC10(struct brcmf_msgbuf *msgbuf, void *buf)
{
	struct brcmf_pub *drvr = msgbuf->drvr;
	struct msgbuf_common_hdr *msg;

	msg = (struct msgbuf_common_hdr *)buf;
	switch (msg->msgtype) {
	case MSGBUF_TYPE_GEN_STATUS:
		FUNC1(MSGBUF, "MSGBUF_TYPE_GEN_STATUS\n");
		FUNC5(msgbuf, buf);
		break;
	case MSGBUF_TYPE_RING_STATUS:
		FUNC1(MSGBUF, "MSGBUF_TYPE_RING_STATUS\n");
		FUNC7(msgbuf, buf);
		break;
	case MSGBUF_TYPE_FLOW_RING_CREATE_CMPLT:
		FUNC1(MSGBUF, "MSGBUF_TYPE_FLOW_RING_CREATE_CMPLT\n");
		FUNC3(msgbuf, buf);
		break;
	case MSGBUF_TYPE_FLOW_RING_DELETE_CMPLT:
		FUNC1(MSGBUF, "MSGBUF_TYPE_FLOW_RING_DELETE_CMPLT\n");
		FUNC4(msgbuf, buf);
		break;
	case MSGBUF_TYPE_IOCTLPTR_REQ_ACK:
		FUNC1(MSGBUF, "MSGBUF_TYPE_IOCTLPTR_REQ_ACK\n");
		break;
	case MSGBUF_TYPE_IOCTL_CMPLT:
		FUNC1(MSGBUF, "MSGBUF_TYPE_IOCTL_CMPLT\n");
		FUNC6(msgbuf, buf);
		break;
	case MSGBUF_TYPE_WL_EVENT:
		FUNC1(MSGBUF, "MSGBUF_TYPE_WL_EVENT\n");
		FUNC2(msgbuf, buf);
		break;
	case MSGBUF_TYPE_TX_STATUS:
		FUNC1(MSGBUF, "MSGBUF_TYPE_TX_STATUS\n");
		FUNC9(msgbuf, buf);
		break;
	case MSGBUF_TYPE_RX_CMPLT:
		FUNC1(MSGBUF, "MSGBUF_TYPE_RX_CMPLT\n");
		FUNC8(msgbuf, buf);
		break;
	default:
		FUNC0(drvr, "Unsupported msgtype %d\n", msg->msgtype);
		break;
	}
}