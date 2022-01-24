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
struct go7007 {scalar_t__ format; int aspect_ratio; scalar_t__ standard; int sensor_framerate; int width; int height; scalar_t__ interlace_coding; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
#define  GO7007_RATIO_16_9 129 
#define  GO7007_RATIO_4_3 128 
 scalar_t__ GO7007_STD_NTSC ; 
 scalar_t__ V4L2_PIX_FMT_MPEG1 ; 
 scalar_t__ V4L2_PIX_FMT_MPEG2 ; 
 int /*<<< orphan*/  c ; 

__attribute__((used)) static int FUNC3(struct go7007 *go, unsigned char *buf, int ext)
{
	int i, aspect_ratio, picture_rate;
	FUNC1(c, buf + 6);

	if (go->format == V4L2_PIX_FMT_MPEG1) {
		switch (go->aspect_ratio) {
		case GO7007_RATIO_4_3:
			aspect_ratio = go->standard == GO7007_STD_NTSC ? 3 : 2;
			break;
		case GO7007_RATIO_16_9:
			aspect_ratio = go->standard == GO7007_STD_NTSC ? 5 : 4;
			break;
		default:
			aspect_ratio = 1;
			break;
		}
	} else {
		switch (go->aspect_ratio) {
		case GO7007_RATIO_4_3:
			aspect_ratio = 2;
			break;
		case GO7007_RATIO_16_9:
			aspect_ratio = 3;
			break;
		default:
			aspect_ratio = 1;
			break;
		}
	}
	switch (go->sensor_framerate) {
	case 24000:
		picture_rate = 1;
		break;
	case 24024:
		picture_rate = 2;
		break;
	case 25025:
		picture_rate = go->interlace_coding ? 6 : 3;
		break;
	case 30000:
		picture_rate = go->interlace_coding ? 7 : 4;
		break;
	case 30030:
		picture_rate = go->interlace_coding ? 8 : 5;
		break;
	default:
		picture_rate = 5; /* 30 fps seems like a reasonable default */
		break;
	}

	FUNC0(c, go->width, 12);
	FUNC0(c, go->height, 12);
	FUNC0(c, aspect_ratio, 4);
	FUNC0(c, picture_rate, 4);
	FUNC0(c, go->format == V4L2_PIX_FMT_MPEG2 ? 20000 : 0x3ffff, 18);
	FUNC0(c, 1, 1);
	FUNC0(c, go->format == V4L2_PIX_FMT_MPEG2 ? 112 : 20, 10);
	FUNC0(c, 0, 3);

	/* Byte-align with zeros */
	i = 8 - (FUNC2(c) % 8);
	if (i != 8)
		FUNC0(c, 0, i);

	if (go->format == V4L2_PIX_FMT_MPEG2) {
		FUNC0(c, 0x1, 24);
		FUNC0(c, 0xb5, 8);
		FUNC0(c, 0x148, 12);
		if (go->interlace_coding)
			FUNC0(c, 0x20001, 20);
		else
			FUNC0(c, 0xa0001, 20);
		FUNC0(c, 0, 16);

		/* Byte-align with zeros */
		i = 8 - (FUNC2(c) % 8);
		if (i != 8)
			FUNC0(c, 0, i);

		if (ext) {
			FUNC0(c, 0x1, 24);
			FUNC0(c, 0xb52, 12);
			FUNC0(c, go->standard == GO7007_STD_NTSC ? 2 : 1, 3);
			FUNC0(c, 0x105, 9);
			FUNC0(c, 0x505, 16);
			FUNC0(c, go->width, 14);
			FUNC0(c, 1, 1);
			FUNC0(c, go->height, 14);

			/* Byte-align with zeros */
			i = 8 - (FUNC2(c) % 8);
			if (i != 8)
				FUNC0(c, 0, i);
		}
	}

	i = FUNC2(c) + 4 * 8;
	buf[0] = i & 0xff;
	buf[1] = i >> 8;
	buf[2] = 0x00;
	buf[3] = 0x00;
	buf[4] = 0x01;
	buf[5] = 0xb3;
	return i;
}