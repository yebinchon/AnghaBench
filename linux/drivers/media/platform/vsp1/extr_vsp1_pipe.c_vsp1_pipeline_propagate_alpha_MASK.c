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
struct vsp1_pipeline {int /*<<< orphan*/  uds; TYPE_1__* uds_input; } ;
struct vsp1_dl_body {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ VSP1_ENTITY_BRS ; 
 scalar_t__ VSP1_ENTITY_BRU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct vsp1_dl_body*,unsigned int) ; 

void FUNC1(struct vsp1_pipeline *pipe,
				   struct vsp1_dl_body *dlb, unsigned int alpha)
{
	if (!pipe->uds)
		return;

	/*
	 * The BRU and BRS background color has a fixed alpha value set to 255,
	 * the output alpha value is thus always equal to 255.
	 */
	if (pipe->uds_input->type == VSP1_ENTITY_BRU ||
	    pipe->uds_input->type == VSP1_ENTITY_BRS)
		alpha = 255;

	FUNC0(pipe->uds, dlb, alpha);
}