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

/* Variables and functions */
 scalar_t__ BRIDGE_TP6800 ; 
 int /*<<< orphan*/  TP6800_R21_ENDP_1_CTL ; 
 int /*<<< orphan*/  TP6800_R2F_TIMING_CFG ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;

	if (sd->bridge == BRIDGE_TP6800)
		FUNC0(gspca_dev, TP6800_R2F_TIMING_CFG, 0x03);
	FUNC1(gspca_dev, 0);
	FUNC0(gspca_dev, TP6800_R21_ENDP_1_CTL, 0x00);
}