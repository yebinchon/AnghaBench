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
typedef  int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct bt856 {int norm; } ;

/* Variables and functions */
 int EINVAL ; 
 int V4L2_STD_NTSC ; 
 int V4L2_STD_PAL ; 
 int /*<<< orphan*/  FUNC0 (struct bt856*) ; 
 int /*<<< orphan*/  FUNC1 (struct bt856*,int,int,int) ; 
 scalar_t__ debug ; 
 struct bt856* FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__,struct v4l2_subdev*,char*,unsigned long long) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd, v4l2_std_id std)
{
	struct bt856 *encoder = FUNC2(sd);

	FUNC3(1, debug, sd, "set norm %llx\n", (unsigned long long)std);

	if (std & V4L2_STD_NTSC) {
		FUNC1(encoder, 0xdc, 2, 0);
	} else if (std & V4L2_STD_PAL) {
		FUNC1(encoder, 0xdc, 2, 1);
		FUNC1(encoder, 0xda, 0, 0);
		/*bt856_setbit(encoder, 0xda, 0, 1);*/
	} else {
		return -EINVAL;
	}
	encoder->norm = std;
	if (debug != 0)
		FUNC0(encoder);
	return 0;
}