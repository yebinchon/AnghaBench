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
struct vpfe_device {int field_off; int /*<<< orphan*/  ccdc; } ;
struct v4l2_rect {int height; int width; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct v4l2_rect*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct vpfe_device*,char*) ; 

__attribute__((used)) static void FUNC2(struct vpfe_device *vpfe)
{
	struct v4l2_rect image_win;

	FUNC1(2, vpfe, "vpfe_calculate_offsets\n");

	FUNC0(&vpfe->ccdc, &image_win);
	vpfe->field_off = image_win.height * image_win.width;
}