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
struct TYPE_2__ {int /*<<< orphan*/  config; } ;
struct vsp1_sru {TYPE_1__ entity; } ;
struct vsp1_pipeline {int dummy; } ;
struct vsp1_entity {int /*<<< orphan*/  subdev; } ;
struct v4l2_mbus_framefmt {scalar_t__ width; } ;

/* Variables and functions */
 int /*<<< orphan*/  SRU_PAD_SINK ; 
 int /*<<< orphan*/  SRU_PAD_SOURCE ; 
 struct vsp1_sru* FUNC0 (int /*<<< orphan*/ *) ; 
 struct v4l2_mbus_framefmt* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC2(struct vsp1_entity *entity,
				  struct vsp1_pipeline *pipe)
{
	struct vsp1_sru *sru = FUNC0(&entity->subdev);
	struct v4l2_mbus_framefmt *input;
	struct v4l2_mbus_framefmt *output;

	input = FUNC1(&sru->entity, sru->entity.config,
					   SRU_PAD_SINK);
	output = FUNC1(&sru->entity, sru->entity.config,
					    SRU_PAD_SOURCE);

	/*
	 * The maximum input width of the SRU is 288 input pixels, but 32
	 * pixels are reserved to support overlapping partition windows when
	 * scaling.
	 */
	if (input->width != output->width)
		return 512;
	else
		return 256;
}