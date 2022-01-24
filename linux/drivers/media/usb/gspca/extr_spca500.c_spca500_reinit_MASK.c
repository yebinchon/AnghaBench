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
struct gspca_dev {int* usb_buf; } ;
typedef  int __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  qtable_pocketdv ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int) ; 
 scalar_t__ FUNC3 (struct gspca_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int,int,int) ; 
 int FUNC5 (struct gspca_dev*,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct gspca_dev *gspca_dev)
{
	int err;
	__u8 Data;

	/* some unknown command from Aiptek pocket dv and family300 */

	FUNC4(gspca_dev, 0x00, 0x0d01, 0x01);
	FUNC4(gspca_dev, 0x00, 0x0d03, 0x00);
	FUNC4(gspca_dev, 0x00, 0x0d02, 0x01);

	/* enable drop packet */
	FUNC4(gspca_dev, 0x00, 0x850a, 0x0001);

	err = FUNC5(gspca_dev, 0x00, 0x8800, 0x8840,
				 qtable_pocketdv);
	if (err < 0)
		FUNC0(gspca_dev, "spca50x_setup_qtable failed on init\n");

	/* set qtable index */
	FUNC4(gspca_dev, 0x00, 0x8880, 2);
	/* family cam Quicksmart stuff */
	FUNC4(gspca_dev, 0x00, 0x800a, 0x00);
	/* Set agc transfer: synced between frames */
	FUNC4(gspca_dev, 0x00, 0x820f, 0x01);
	/* Init SDRAM - needed for SDRAM access */
	FUNC4(gspca_dev, 0x00, 0x870a, 0x04);
	/*Start init sequence or stream */
	FUNC4(gspca_dev, 0, 0x8003, 0x00);
	/* switch to video camera mode */
	FUNC4(gspca_dev, 0x00, 0x8000, 0x0004);
	FUNC1(2000);
	if (FUNC3(gspca_dev, 0, 0x8000, 0x44) != 0) {
		FUNC2(gspca_dev, 0x816b, 1);
		Data = gspca_dev->usb_buf[0];
		FUNC4(gspca_dev, 0x00, 0x816b, Data);
	}
}