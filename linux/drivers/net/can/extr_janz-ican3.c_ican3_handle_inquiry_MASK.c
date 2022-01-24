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
struct ican3_msg {int* data; } ;
struct TYPE_2__ {int rxerr; int txerr; } ;
struct ican3_dev {int termination_enabled; int /*<<< orphan*/  ndev; int /*<<< orphan*/  termination_comp; int /*<<< orphan*/  buserror_comp; TYPE_1__ bec; } ;

/* Variables and functions */
 int HWCONF_TERMINATE_ON ; 
#define  INQUIRY_EXTENDED 130 
#define  INQUIRY_STATUS 129 
#define  INQUIRY_TERMINATION 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2(struct ican3_dev *mod, struct ican3_msg *msg)
{
	switch (msg->data[0]) {
	case INQUIRY_STATUS:
	case INQUIRY_EXTENDED:
		mod->bec.rxerr = msg->data[5];
		mod->bec.txerr = msg->data[6];
		FUNC0(&mod->buserror_comp);
		break;
	case INQUIRY_TERMINATION:
		mod->termination_enabled = msg->data[6] & HWCONF_TERMINATE_ON;
		FUNC0(&mod->termination_comp);
		break;
	default:
		FUNC1(mod->ndev, "received an unknown inquiry response\n");
		break;
	}
}