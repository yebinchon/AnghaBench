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
typedef  scalar_t__ u16 ;
struct ican3_msg {int* data; int /*<<< orphan*/  len; } ;
struct ican3_dev {int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
#define  NE_LOCAL_OCCURRED 131 
#define  NE_LOCAL_RESOLVED 130 
#define  NE_REMOTE_OCCURRED 129 
#define  NE_REMOTE_RESOLVED 128 
 scalar_t__ NMTS_SLAVE_EVENT_IND ; 
 scalar_t__ NMTS_SLAVE_STATE_IND ; 
 int /*<<< orphan*/  FUNC0 (struct ican3_dev*,struct ican3_msg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct ican3_dev *mod, struct ican3_msg *msg)
{
	u16 subspec;

	subspec = msg->data[0] + msg->data[1] * 0x100;
	if (subspec == NMTS_SLAVE_EVENT_IND) {
		switch (msg->data[2]) {
		case NE_LOCAL_OCCURRED:
		case NE_LOCAL_RESOLVED:
			/* now follows the same message as Raw ICANOS CEVTIND
			 * shift the data at the same place and call this method
			 */
			FUNC1(&msg->len, -3);
			FUNC3(msg->data, msg->data + 3, FUNC2(msg->len));
			FUNC0(mod, msg);
			break;
		case NE_REMOTE_OCCURRED:
		case NE_REMOTE_RESOLVED:
			/* should not occurre, ignore */
			break;
		default:
			FUNC4(mod->ndev, "unknown NMTS event indication %x\n",
				    msg->data[2]);
			break;
		}
	} else if (subspec == NMTS_SLAVE_STATE_IND) {
		/* ignore state indications */
	} else {
		FUNC4(mod->ndev, "unhandled NMTS indication %x\n",
			    subspec);
		return;
	}
}