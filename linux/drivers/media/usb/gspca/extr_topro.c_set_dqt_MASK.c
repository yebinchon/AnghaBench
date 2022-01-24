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
typedef  int u8 ;
struct sd {int quality; scalar_t__ sensor; int /*<<< orphan*/ * jpeg_hdr; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * DQT ; 
 int /*<<< orphan*/  D_STREAM ; 
 int JPEG_QT0_OFFSET ; 
 scalar_t__ SENSOR_SOI763A ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/ * jpeg_q ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct gspca_dev *gspca_dev, u8 q)
{
	struct sd *sd = (struct sd *) gspca_dev;

	/* update the jpeg quantization tables */
	FUNC0(gspca_dev, D_STREAM, "q %d -> %d\n", sd->quality, q);
	sd->quality = q;
	if (q > 16)
		q = 16;
	if (sd->sensor == SENSOR_SOI763A)
		FUNC1(sd->jpeg_hdr, jpeg_q[q]);
	else
		FUNC2(&sd->jpeg_hdr[JPEG_QT0_OFFSET - 1],
			DQT[q], sizeof DQT[0]);
}