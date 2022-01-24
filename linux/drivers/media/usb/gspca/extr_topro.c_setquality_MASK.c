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
struct sd {scalar_t__ bridge; } ;
struct gspca_dev {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 scalar_t__ BRIDGE_TP6810 ; 
 int /*<<< orphan*/  TP6800_R79_QUALITY ; 
 int /*<<< orphan*/  TP6800_R7A_BLK_THRLD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev, s32 q)
{
	struct sd *sd = (struct sd *) gspca_dev;

	if (q != 16)
		q = 15 - q;

	FUNC1(gspca_dev, TP6800_R7A_BLK_THRLD, 0x00);
	FUNC1(gspca_dev, TP6800_R79_QUALITY, 0x04);
	FUNC1(gspca_dev, TP6800_R79_QUALITY, q);

	/* auto quality */
	if (q == 15 && sd->bridge == BRIDGE_TP6810) {
		FUNC0(4);
		FUNC1(gspca_dev, TP6800_R7A_BLK_THRLD, 0x19);
	}
}