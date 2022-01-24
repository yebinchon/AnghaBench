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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int blocks; int /*<<< orphan*/ * data; } ;
struct adv7511_state {TYPE_1__ edid; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct adv7511_state* FUNC1 (struct v4l2_subdev*) ; 

__attribute__((used)) static bool FUNC2(struct v4l2_subdev *sd, u32 segment)
{
	struct adv7511_state *state = FUNC1(sd);
	u32 blocks = state->edid.blocks;
	u8 *data = state->edid.data;

	if (!FUNC0(&data[segment * 256]))
		return false;
	if ((segment + 1) * 2 <= blocks)
		return FUNC0(&data[segment * 256 + 128]);
	return true;
}