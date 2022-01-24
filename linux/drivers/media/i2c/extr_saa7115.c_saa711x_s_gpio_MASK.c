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
typedef  scalar_t__ u32 ;
struct v4l2_subdev {int dummy; } ;
struct saa711x_state {scalar_t__ ident; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ SAA7111A ; 
 int FUNC0 (struct v4l2_subdev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int,int) ; 
 struct saa711x_state* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, u32 val)
{
	struct saa711x_state *state = FUNC2(sd);

	if (state->ident > SAA7111A)
		return -EINVAL;
	FUNC1(sd, 0x11, (FUNC0(sd, 0x11) & 0x7f) |
		(val ? 0x80 : 0));
	return 0;
}