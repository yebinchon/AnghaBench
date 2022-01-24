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
struct mcam_camera {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CF_CONFIG_NEEDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct mcam_camera *cam, int needed)
{
	if (needed)
		FUNC1(CF_CONFIG_NEEDED, &cam->flags);
	else
		FUNC0(CF_CONFIG_NEEDED, &cam->flags);
}