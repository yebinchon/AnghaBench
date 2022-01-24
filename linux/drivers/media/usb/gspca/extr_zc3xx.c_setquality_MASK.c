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
struct sd {int reg08; int /*<<< orphan*/  jpeg_hdr; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZC3XX_R008_CLOCKSETTING ; 
 int /*<<< orphan*/ * jpeg_qual ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	FUNC0(sd->jpeg_hdr, jpeg_qual[sd->reg08 >> 1]);
	FUNC1(gspca_dev, sd->reg08, ZC3XX_R008_CLOCKSETTING);
}