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
struct TYPE_2__ {int width; int height; } ;
struct gspca_dev {TYPE_1__ pixfmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_PROBE ; 
 int FUNC0 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int,int,int,int,int) ; 

__attribute__((used)) static int FUNC2(struct gspca_dev *gspca_dev)
{
	int clock_div = 7; /* 0=30 1=25 2=20 3=15 4=12 5=7.5 6=6 7=3fps ?? */
	int fps[8] = { 30, 25, 20, 15, 12, 8, 6, 3 };
	int packet_size;

	packet_size = FUNC0(gspca_dev);
	if (packet_size < 0)
		return packet_size;

	while (clock_div > 3 &&
			1000 * packet_size >
			gspca_dev->pixfmt.width * gspca_dev->pixfmt.height *
			fps[clock_div - 1] * 3 / 2)
		clock_div--;

	FUNC1(gspca_dev, D_PROBE,
		  "PacketSize: %d, res: %dx%d -> using clockdiv: %d (%d fps)\n",
		  packet_size,
		  gspca_dev->pixfmt.width, gspca_dev->pixfmt.height,
		  clock_div, fps[clock_div]);

	return clock_div;
}