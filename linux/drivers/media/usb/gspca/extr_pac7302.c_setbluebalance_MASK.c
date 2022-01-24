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
struct sd {TYPE_1__* blue_balance; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;

	FUNC0(gspca_dev, 0xff, 0x00);			/* page 0 */
	FUNC0(gspca_dev, 0x03,
	      FUNC1(sd->blue_balance->val));

	FUNC0(gspca_dev, 0xdc, 0x01);
}