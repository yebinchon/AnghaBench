#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {size_t curr_mode; TYPE_2__ cam; } ;
struct TYPE_3__ {int priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev, u8 *data, int len)
{
	int mult = gspca_dev->cam.cam_mode[gspca_dev->curr_mode].priv;

	if (len == 0)
		return;

	if (mult == 1) /* mult == 1 means raw bayer */
		FUNC0(gspca_dev, data, len);
	else
		FUNC1(gspca_dev, data, len);
}