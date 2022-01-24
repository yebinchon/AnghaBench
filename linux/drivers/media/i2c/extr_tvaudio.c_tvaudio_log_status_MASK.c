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
struct v4l2_subdev {int /*<<< orphan*/  name; } ;
struct CHIPSTATE {int /*<<< orphan*/  hdl; struct CHIPDESC* desc; } ;
struct CHIPDESC {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct CHIPSTATE* FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd)
{
	struct CHIPSTATE *chip = FUNC0(sd);
	struct CHIPDESC *desc = chip->desc;

	FUNC2(sd, "Chip: %s\n", desc->name);
	FUNC1(&chip->hdl, sd->name);
	return 0;
}