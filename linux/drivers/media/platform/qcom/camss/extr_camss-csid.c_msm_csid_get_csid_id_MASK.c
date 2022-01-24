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
typedef  int /*<<< orphan*/  u8 ;
struct v4l2_subdev {int dummy; } ;
struct media_entity {int dummy; } ;
struct csid_device {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 struct v4l2_subdev* FUNC0 (struct media_entity*) ; 
 struct csid_device* FUNC1 (struct v4l2_subdev*) ; 

void FUNC2(struct media_entity *entity, u8 *id)
{
	struct v4l2_subdev *sd = FUNC0(entity);
	struct csid_device *csid = FUNC1(sd);

	*id = csid->id;
}