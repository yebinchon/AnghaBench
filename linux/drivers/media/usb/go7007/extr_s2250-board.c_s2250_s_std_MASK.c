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
typedef  int u16 ;
struct v4l2_subdev {int dummy; } ;
struct s2250 {int input; int std; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int V4L2_STD_625_50 ; 
 struct s2250* FUNC0 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  vid_regs_fp ; 
 int /*<<< orphan*/  vid_regs_fp_pal ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd, v4l2_std_id norm)
{
	struct s2250 *state = FUNC0(sd);
	struct i2c_client *client = FUNC1(sd);
	u16 vidsource;

	vidsource = (state->input == 1) ? 0x040 : 0x020;
	if (norm & V4L2_STD_625_50) {
		FUNC3(client, vid_regs_fp);
		FUNC3(client, vid_regs_fp_pal);
		FUNC2(client, 0x20, vidsource);
	} else {
		FUNC3(client, vid_regs_fp);
		FUNC2(client, 0x20, vidsource | 1);
	}
	state->std = norm;
	return 0;
}