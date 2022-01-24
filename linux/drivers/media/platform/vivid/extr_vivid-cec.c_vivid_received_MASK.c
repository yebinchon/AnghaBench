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
typedef  int /*<<< orphan*/  u8 ;
struct vivid_dev {int /*<<< orphan*/  osd_jiffies; int /*<<< orphan*/ * osd; } ;
struct cec_msg {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * log_addr; } ;
struct cec_adapter {TYPE_1__ log_addrs; } ;

/* Variables and functions */
#define  CEC_MSG_SET_OSD_STRING 131 
 int /*<<< orphan*/  CEC_OP_ABORT_INVALID_OP ; 
#define  CEC_OP_DISP_CTL_CLEAR 130 
#define  CEC_OP_DISP_CTL_DEFAULT 129 
#define  CEC_OP_DISP_CTL_UNTIL_CLEARED 128 
 int ENOMSG ; 
 struct vivid_dev* FUNC0 (struct cec_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct cec_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct cec_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct cec_msg*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cec_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cec_msg*) ; 
 scalar_t__ FUNC6 (struct cec_msg*) ; 
 int FUNC7 (struct cec_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct cec_msg*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct cec_adapter*,struct cec_msg*,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC11(struct cec_adapter *adap, struct cec_msg *msg)
{
	struct vivid_dev *dev = FUNC0(adap);
	struct cec_msg reply;
	u8 dest = FUNC2(msg);
	u8 disp_ctl;
	char osd[14];

	if (FUNC6(msg))
		dest = adap->log_addrs.log_addr[0];
	FUNC4(&reply, dest, FUNC5(msg));

	switch (FUNC7(msg)) {
	case CEC_MSG_SET_OSD_STRING:
		if (!FUNC1(adap))
			return -ENOMSG;
		FUNC8(msg, &disp_ctl, osd);
		switch (disp_ctl) {
		case CEC_OP_DISP_CTL_DEFAULT:
			FUNC10(dev->osd, osd, sizeof(dev->osd));
			dev->osd_jiffies = jiffies;
			break;
		case CEC_OP_DISP_CTL_UNTIL_CLEARED:
			FUNC10(dev->osd, osd, sizeof(dev->osd));
			dev->osd_jiffies = 0;
			break;
		case CEC_OP_DISP_CTL_CLEAR:
			dev->osd[0] = 0;
			dev->osd_jiffies = 0;
			break;
		default:
			FUNC3(&reply, FUNC7(msg),
					      CEC_OP_ABORT_INVALID_OP);
			FUNC9(adap, &reply, false);
			break;
		}
		break;
	default:
		return -ENOMSG;
	}
	return 0;
}