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
struct vsp1_entity {int /*<<< orphan*/  subdev; } ;
struct vsp1_clu {int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 struct vsp1_clu* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct vsp1_entity *entity)
{
	struct vsp1_clu *clu = FUNC0(&entity->subdev);

	FUNC1(clu->pool);
}