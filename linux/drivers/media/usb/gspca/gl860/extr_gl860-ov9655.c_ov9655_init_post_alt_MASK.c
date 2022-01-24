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
struct gspca_dev {scalar_t__ curr_mode; TYPE_2__ cam; } ;
typedef  size_t s32 ;
struct TYPE_3__ {size_t priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t IMAGE_640 ; 
 int /*<<< orphan*/  c04 ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int,int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * dat_post1 ; 
 int /*<<< orphan*/ * dat_post2 ; 
 int /*<<< orphan*/ * dat_post3 ; 
 int /*<<< orphan*/ * dat_post4 ; 
 int /*<<< orphan*/ * dat_post5 ; 
 int /*<<< orphan*/ * dat_post6 ; 
 int /*<<< orphan*/ * dat_post7 ; 
 int /*<<< orphan*/ * dat_post8 ; 
 size_t FUNC3 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*) ; 
 int /*<<< orphan*/ ** tbl_1280 ; 
 int /*<<< orphan*/ ** tbl_640 ; 
 int /*<<< orphan*/  tbl_init_post_alt ; 
 int* tbl_length ; 

__attribute__((used)) static int FUNC6(struct gspca_dev *gspca_dev)
{
	s32 reso = gspca_dev->cam.cam_mode[(s32) gspca_dev->curr_mode].priv;
	s32 n; /* reserved for FETCH functions */
	s32 i;
	u8 **tbl;

	FUNC2(gspca_dev, 0x40, 5, 0x0001, 0x0000, 0, NULL);

	tbl = (reso == IMAGE_640) ? tbl_640 : tbl_1280;

	FUNC2(gspca_dev, 0x40, 3, 0x0000, 0x0200,
			tbl_length[0], tbl[0]);
	for (i = 1; i < 7; i++)
		FUNC2(gspca_dev, 0x40, 3, 0x6000, 0x0200,
				tbl_length[i], tbl[i]);
	FUNC2(gspca_dev, 0x40, 3, 0x0000, 0x0200,
			tbl_length[7], tbl[7]);

	n = FUNC3(gspca_dev, tbl_init_post_alt,
			FUNC0(tbl_init_post_alt));

	FUNC1(gspca_dev, 0xc0, 2, 0x6000, 0x801e, 1, c04);
	FUNC4(gspca_dev, tbl_init_post_alt,
					FUNC0(tbl_init_post_alt), n);
	FUNC1(gspca_dev, 0xc0, 2, 0x6000, 0x801e, 1, c04);
	FUNC4(gspca_dev, tbl_init_post_alt,
					FUNC0(tbl_init_post_alt), n);
	FUNC1(gspca_dev, 0xc0, 2, 0x6000, 0x801e, 1, c04);
	FUNC4(gspca_dev, tbl_init_post_alt,
					FUNC0(tbl_init_post_alt), n);
	FUNC1(gspca_dev, 0xc0, 2, 0x6000, 0x801e, 1, c04);
	FUNC4(gspca_dev, tbl_init_post_alt,
					FUNC0(tbl_init_post_alt), n);
	FUNC2(gspca_dev, 0x40, 3, 0x6000, 0x0200, 8, dat_post1);
	FUNC4(gspca_dev, tbl_init_post_alt,
					FUNC0(tbl_init_post_alt), n);

	FUNC1(gspca_dev, 0xc0, 2, 0x6000, 0x801e, 1, c04);
	FUNC4(gspca_dev, tbl_init_post_alt,
					FUNC0(tbl_init_post_alt), n);
	FUNC1(gspca_dev, 0xc0, 2, 0x6000, 0x801e, 1, c04);
	FUNC4(gspca_dev, tbl_init_post_alt,
					FUNC0(tbl_init_post_alt), n);
	FUNC1(gspca_dev, 0xc0, 2, 0x6000, 0x801e, 1, c04);
	FUNC4(gspca_dev, tbl_init_post_alt,
					FUNC0(tbl_init_post_alt), n);
	FUNC1(gspca_dev, 0xc0, 2, 0x6000, 0x801e, 1, c04);
	FUNC4(gspca_dev, tbl_init_post_alt,
					FUNC0(tbl_init_post_alt), n);
	FUNC2(gspca_dev, 0x40, 3, 0x6000, 0x0200, 8, dat_post1);
	FUNC4(gspca_dev, tbl_init_post_alt,
					FUNC0(tbl_init_post_alt), n);

	FUNC1(gspca_dev, 0xc0, 2, 0x6000, 0x801e, 1, c04);
	FUNC4(gspca_dev, tbl_init_post_alt,
					FUNC0(tbl_init_post_alt), n);
	FUNC1(gspca_dev, 0xc0, 2, 0x6000, 0x801e, 1, c04);
	FUNC4(gspca_dev, tbl_init_post_alt,
					FUNC0(tbl_init_post_alt), n);

	FUNC2(gspca_dev, 0x40, 3, 0x6000, 0x0200, 8, dat_post1);

	FUNC2(gspca_dev, 0x40, 3, 0x0000, 0x0200, 4, dat_post2);
	FUNC2(gspca_dev, 0x40, 3, 0x6000, 0x0200, 8, dat_post3);

	FUNC2(gspca_dev, 0x40, 3, 0x0000, 0x0200, 4, dat_post4);
	FUNC2(gspca_dev, 0x40, 3, 0x6000, 0x0200, 8, dat_post5);

	FUNC2(gspca_dev, 0x40, 3, 0x0000, 0x0200, 4, dat_post6);
	FUNC2(gspca_dev, 0x40, 3, 0x6000, 0x0200, 8, dat_post7);

	FUNC2(gspca_dev, 0x40, 3, 0x6000, 0x0200, 8, dat_post8);

	FUNC5(gspca_dev);

	return 0;
}