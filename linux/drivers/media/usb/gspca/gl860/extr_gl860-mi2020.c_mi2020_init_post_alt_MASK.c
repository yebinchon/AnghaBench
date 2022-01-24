#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_5__ {size_t mirror; size_t flip; size_t AC50Hz; size_t whitebal; } ;
struct TYPE_8__ {scalar_t__ mirror; scalar_t__ flip; scalar_t__ AC50Hz; size_t whitebal; } ;
struct sd {int mirrorMask; int nbIm; TYPE_1__ vold; TYPE_4__ vcur; } ;
struct TYPE_7__ {TYPE_2__* cam_mode; } ;
struct gspca_dev {scalar_t__ curr_mode; TYPE_3__ cam; } ;
typedef  size_t s32 ;
struct TYPE_6__ {size_t priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  IMAGE_1280 131 
#define  IMAGE_1600 130 
#define  IMAGE_640 129 
#define  IMAGE_800 128 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int,int,int,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int,int,int,int,int,...) ; 
 int* dat_1280 ; 
 int* dat_1600 ; 
 int* dat_640 ; 
 int* dat_800 ; 
 int* dat_freq1 ; 
 int* dat_hvflip1 ; 
 int* dat_hvflip3 ; 
 int* dat_hvflip5 ; 
 int* dat_hvflip6 ; 
 int* dat_multi5 ; 
 int* dat_multi6 ; 
 int* dat_wbal1 ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  tbl_end_hvflip ; 
 int /*<<< orphan*/  tbl_init_post_alt_3B ; 
 int /*<<< orphan*/  tbl_init_post_alt_big ; 
 int /*<<< orphan*/  tbl_init_post_alt_low1 ; 
 int /*<<< orphan*/  tbl_init_post_alt_low2 ; 
 int /*<<< orphan*/  tbl_init_post_alt_low3 ; 
 int /*<<< orphan*/  tbl_middle_hvflip_big ; 
 int /*<<< orphan*/  tbl_middle_hvflip_low ; 

__attribute__((used)) static int FUNC7(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	s32 reso = gspca_dev->cam.cam_mode[(s32) gspca_dev->curr_mode].priv;

	s32 mirror = (((sd->vcur.mirror > 0) ^ sd->mirrorMask) > 0);
	s32 flip   = (((sd->vcur.flip   > 0) ^ sd->mirrorMask) > 0);
	s32 freq   = (sd->vcur.AC50Hz  > 0);
	s32 wbal   = sd->vcur.whitebal;

	u8 dat_freq2[] = {0x90, 0x00, 0x80};
	u8 dat_multi1[] = {0x8c, 0xa7, 0x00};
	u8 dat_multi2[] = {0x90, 0x00, 0x00};
	u8 dat_multi3[] = {0x8c, 0xa7, 0x00};
	u8 dat_multi4[] = {0x90, 0x00, 0x00};
	u8 dat_hvflip2[] = {0x90, 0x04, 0x6c};
	u8 dat_hvflip4[] = {0x90, 0x00, 0x24};
	u8 dat_wbal2[] = {0x90, 0x00, 0x00};
	u8 c;

	sd->nbIm = -1;

	dat_freq2[2] = freq ? 0xc0 : 0x80;
	dat_multi1[2] = 0x9d;
	dat_multi3[2] = dat_multi1[2] + 1;
	if (wbal == 0) {
		dat_multi4[2] = dat_multi2[2] = 0;
		dat_wbal2[2] = 0x17;
	} else if (wbal == 1) {
		dat_multi4[2] = dat_multi2[2] = 0;
		dat_wbal2[2] = 0x35;
	} else if (wbal == 2) {
		dat_multi4[2] = dat_multi2[2] = 0x20;
		dat_wbal2[2] = 0x17;
	}
	dat_hvflip2[2] = 0x6c + 2 * (1 - flip) + (1 - mirror);
	dat_hvflip4[2] = 0x24 + 2 * (1 - flip) + (1 - mirror);

	FUNC6(200);
	FUNC3(gspca_dev, 0x40, 5, 0x0001, 0x0000, 0, NULL);
	FUNC6(2);

	FUNC1(gspca_dev);

	FUNC6(142);
	FUNC3(gspca_dev, 0x40,  1, 0x0010, 0x0010,  0, NULL);
	FUNC3(gspca_dev, 0x40,  1, 0x0003, 0x00c1,  0, NULL);
	FUNC3(gspca_dev, 0x40,  1, 0x0042, 0x00c2,  0, NULL);
	FUNC3(gspca_dev, 0x40,  1, 0x006a, 0x000d,  0, NULL);

	switch (reso) {
	case IMAGE_640:
	case IMAGE_800:
		if (reso != IMAGE_800)
			FUNC3(gspca_dev, 0x40,  3, 0x0000, 0x0200,
				12, dat_640);
		else
			FUNC3(gspca_dev, 0x40,  3, 0x0000, 0x0200,
				12, dat_800);

		FUNC4(gspca_dev, tbl_init_post_alt_low1,
					FUNC0(tbl_init_post_alt_low1));

		if (reso == IMAGE_800)
			FUNC4(gspca_dev, tbl_init_post_alt_low2,
					FUNC0(tbl_init_post_alt_low2));

		FUNC4(gspca_dev, tbl_init_post_alt_low3,
				FUNC0(tbl_init_post_alt_low3));

		FUNC3(gspca_dev, 0x40, 1, 0x0010, 0x0010, 0, NULL);
		FUNC3(gspca_dev, 0x40, 1, 0x0000, 0x00c1, 0, NULL);
		FUNC3(gspca_dev, 0x40, 1, 0x0041, 0x00c2, 0, NULL);
		FUNC6(120);
		break;

	case IMAGE_1280:
	case IMAGE_1600:
		if (reso == IMAGE_1280) {
			FUNC3(gspca_dev, 0x40, 3, 0x0000, 0x0200,
					12, dat_1280);
			FUNC3(gspca_dev, 0x40, 3, 0x7a00, 0x0033,
					3, "\x8c\x27\x07");
			FUNC3(gspca_dev, 0x40, 3, 0x7a00, 0x0033,
					3, "\x90\x05\x04");
			FUNC3(gspca_dev, 0x40, 3, 0x7a00, 0x0033,
					3, "\x8c\x27\x09");
			FUNC3(gspca_dev, 0x40, 3, 0x7a00, 0x0033,
					3, "\x90\x04\x02");
		} else {
			FUNC3(gspca_dev, 0x40, 3, 0x0000, 0x0200,
					12, dat_1600);
			FUNC3(gspca_dev, 0x40, 3, 0x7a00, 0x0033,
					3, "\x8c\x27\x07");
			FUNC3(gspca_dev, 0x40, 3, 0x7a00, 0x0033,
					3, "\x90\x06\x40");
			FUNC3(gspca_dev, 0x40, 3, 0x7a00, 0x0033,
					3, "\x8c\x27\x09");
			FUNC3(gspca_dev, 0x40, 3, 0x7a00, 0x0033,
					3, "\x90\x04\xb0");
		}

		FUNC4(gspca_dev, tbl_init_post_alt_big,
				FUNC0(tbl_init_post_alt_big));

		FUNC3(gspca_dev, 0x40, 1, 0x0001, 0x0010, 0, NULL);
		FUNC3(gspca_dev, 0x40, 1, 0x0000, 0x00c1, 0, NULL);
		FUNC3(gspca_dev, 0x40, 1, 0x0041, 0x00c2, 0, NULL);
		FUNC6(1850);
	}

	FUNC3(gspca_dev, 0x40, 1, 0x0040, 0x0000, 0, NULL);
	FUNC6(40);

	/* AC power frequency */
	FUNC3(gspca_dev, 0x40, 3, 0x7a00, 0x0033, 3, dat_freq1);
	FUNC3(gspca_dev, 0x40, 3, 0x7a00, 0x0033, 3, dat_freq2);
	FUNC6(33);
	/* light source */
	FUNC3(gspca_dev, 0x40, 3, 0x7a00, 0x0033, 3, dat_multi1);
	FUNC3(gspca_dev, 0x40, 3, 0x7a00, 0x0033, 3, dat_multi2);
	FUNC3(gspca_dev, 0x40, 3, 0x7a00, 0x0033, 3, dat_multi3);
	FUNC3(gspca_dev, 0x40, 3, 0x7a00, 0x0033, 3, dat_multi4);
	FUNC3(gspca_dev, 0x40, 3, 0x7a00, 0x0033, 3, dat_wbal1);
	FUNC3(gspca_dev, 0x40, 3, 0x7a00, 0x0033, 3, dat_wbal2);
	FUNC3(gspca_dev, 0x40, 3, 0x7a00, 0x0033, 3, dat_multi5);
	FUNC3(gspca_dev, 0x40, 3, 0x7a00, 0x0033, 3, dat_multi6);
	FUNC6(7);
	FUNC2(gspca_dev, 0xc0, 2, 0x0000, 0x0000, 1, &c);

	FUNC4(gspca_dev, tbl_init_post_alt_3B,
			FUNC0(tbl_init_post_alt_3B));

	/* hvflip */
	FUNC3(gspca_dev, 0x40, 3, 0x7a00, 0x0033, 3, dat_hvflip1);
	FUNC3(gspca_dev, 0x40, 3, 0x7a00, 0x0033, 3, dat_hvflip2);
	FUNC3(gspca_dev, 0x40, 3, 0x7a00, 0x0033, 3, dat_hvflip3);
	FUNC3(gspca_dev, 0x40, 3, 0x7a00, 0x0033, 3, dat_hvflip4);
	FUNC3(gspca_dev, 0x40, 3, 0x7a00, 0x0033, 3, dat_hvflip5);
	FUNC3(gspca_dev, 0x40, 3, 0x7a00, 0x0033, 3, dat_hvflip6);
	FUNC6(250);

	if (reso == IMAGE_640 || reso == IMAGE_800)
		FUNC4(gspca_dev, tbl_middle_hvflip_low,
				FUNC0(tbl_middle_hvflip_low));
	else
		FUNC4(gspca_dev, tbl_middle_hvflip_big,
				FUNC0(tbl_middle_hvflip_big));

	FUNC4(gspca_dev, tbl_end_hvflip,
			FUNC0(tbl_end_hvflip));

	sd->nbIm = 0;

	sd->vold.mirror    = mirror;
	sd->vold.flip      = flip;
	sd->vold.AC50Hz    = freq;
	sd->vold.whitebal  = wbal;

	FUNC5(gspca_dev);

	return 0;
}