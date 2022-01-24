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
typedef  int u32 ;
struct vfe_line {int dummy; } ;
struct vfe_device {TYPE_1__* camss; } ;
struct TYPE_2__ {scalar_t__ version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 scalar_t__ CAMSS_8x16 ; 
 scalar_t__ CAMSS_8x96 ; 
 int const MEDIA_BUS_FMT_UYVY8_1_5X8 ; 
#define  MEDIA_BUS_FMT_UYVY8_2X8 131 
 int const MEDIA_BUS_FMT_VYUY8_1_5X8 ; 
#define  MEDIA_BUS_FMT_VYUY8_2X8 130 
 int const MEDIA_BUS_FMT_YUYV8_1_5X8 ; 
#define  MEDIA_BUS_FMT_YUYV8_2X8 129 
 int const MEDIA_BUS_FMT_YVYU8_1_5X8 ; 
#define  MEDIA_BUS_FMT_YVYU8_2X8 128 
 struct vfe_device* FUNC1 (struct vfe_line*) ; 
 int FUNC2 (int*,int /*<<< orphan*/ ,unsigned int,int) ; 

__attribute__((used)) static u32 FUNC3(struct vfe_line *line, u32 sink_code,
			    unsigned int index, u32 src_req_code)
{
	struct vfe_device *vfe = FUNC1(line);

	if (vfe->camss->version == CAMSS_8x16)
		switch (sink_code) {
		case MEDIA_BUS_FMT_YUYV8_2X8:
		{
			u32 src_code[] = {
				MEDIA_BUS_FMT_YUYV8_2X8,
				MEDIA_BUS_FMT_YUYV8_1_5X8,
			};

			return FUNC2(src_code, FUNC0(src_code),
					     index, src_req_code);
		}
		case MEDIA_BUS_FMT_YVYU8_2X8:
		{
			u32 src_code[] = {
				MEDIA_BUS_FMT_YVYU8_2X8,
				MEDIA_BUS_FMT_YVYU8_1_5X8,
			};

			return FUNC2(src_code, FUNC0(src_code),
					     index, src_req_code);
		}
		case MEDIA_BUS_FMT_UYVY8_2X8:
		{
			u32 src_code[] = {
				MEDIA_BUS_FMT_UYVY8_2X8,
				MEDIA_BUS_FMT_UYVY8_1_5X8,
			};

			return FUNC2(src_code, FUNC0(src_code),
					     index, src_req_code);
		}
		case MEDIA_BUS_FMT_VYUY8_2X8:
		{
			u32 src_code[] = {
				MEDIA_BUS_FMT_VYUY8_2X8,
				MEDIA_BUS_FMT_VYUY8_1_5X8,
			};

			return FUNC2(src_code, FUNC0(src_code),
					     index, src_req_code);
		}
		default:
			if (index > 0)
				return 0;

			return sink_code;
		}
	else if (vfe->camss->version == CAMSS_8x96)
		switch (sink_code) {
		case MEDIA_BUS_FMT_YUYV8_2X8:
		{
			u32 src_code[] = {
				MEDIA_BUS_FMT_YUYV8_2X8,
				MEDIA_BUS_FMT_YVYU8_2X8,
				MEDIA_BUS_FMT_UYVY8_2X8,
				MEDIA_BUS_FMT_VYUY8_2X8,
				MEDIA_BUS_FMT_YUYV8_1_5X8,
			};

			return FUNC2(src_code, FUNC0(src_code),
					     index, src_req_code);
		}
		case MEDIA_BUS_FMT_YVYU8_2X8:
		{
			u32 src_code[] = {
				MEDIA_BUS_FMT_YVYU8_2X8,
				MEDIA_BUS_FMT_YUYV8_2X8,
				MEDIA_BUS_FMT_UYVY8_2X8,
				MEDIA_BUS_FMT_VYUY8_2X8,
				MEDIA_BUS_FMT_YVYU8_1_5X8,
			};

			return FUNC2(src_code, FUNC0(src_code),
					     index, src_req_code);
		}
		case MEDIA_BUS_FMT_UYVY8_2X8:
		{
			u32 src_code[] = {
				MEDIA_BUS_FMT_UYVY8_2X8,
				MEDIA_BUS_FMT_YUYV8_2X8,
				MEDIA_BUS_FMT_YVYU8_2X8,
				MEDIA_BUS_FMT_VYUY8_2X8,
				MEDIA_BUS_FMT_UYVY8_1_5X8,
			};

			return FUNC2(src_code, FUNC0(src_code),
					     index, src_req_code);
		}
		case MEDIA_BUS_FMT_VYUY8_2X8:
		{
			u32 src_code[] = {
				MEDIA_BUS_FMT_VYUY8_2X8,
				MEDIA_BUS_FMT_YUYV8_2X8,
				MEDIA_BUS_FMT_YVYU8_2X8,
				MEDIA_BUS_FMT_UYVY8_2X8,
				MEDIA_BUS_FMT_VYUY8_1_5X8,
			};

			return FUNC2(src_code, FUNC0(src_code),
					     index, src_req_code);
		}
		default:
			if (index > 0)
				return 0;

			return sink_code;
		}
	else
		return 0;
}