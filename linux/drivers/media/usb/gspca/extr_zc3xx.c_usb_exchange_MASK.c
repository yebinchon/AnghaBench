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
struct usb_action {int req; int val; int idx; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int,int) ; 

__attribute__((used)) static void FUNC4(struct gspca_dev *gspca_dev,
			const struct usb_action *action)
{
	while (action->req) {
		switch (action->req) {
		case 0xa0:	/* write register */
			FUNC3(gspca_dev, action->val, action->idx);
			break;
		case 0xa1:	/* read status */
			FUNC2(gspca_dev, action->idx);
			break;
		case 0xaa:
			FUNC0(gspca_dev,
				  action->val,			/* reg */
				  action->idx & 0xff,		/* valL */
				  action->idx >> 8);		/* valH */
			break;
		case 0xbb:
			FUNC0(gspca_dev,
				  action->idx >> 8,		/* reg */
				  action->idx & 0xff,		/* valL */
				  action->val);			/* valH */
			break;
		default:
/*		case 0xdd:	 * delay */
			FUNC1(action->idx);
			break;
		}
		action++;
		FUNC1(1);
	}
}