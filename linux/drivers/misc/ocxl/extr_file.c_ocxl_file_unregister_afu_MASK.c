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
struct ocxl_file_info {int /*<<< orphan*/  dev; } ;
struct ocxl_afu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ocxl_file_info* FUNC1 (struct ocxl_afu*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocxl_file_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocxl_file_info*) ; 

void FUNC4(struct ocxl_afu *afu)
{
	struct ocxl_file_info *info = FUNC1(afu);

	if (!info)
		return;

	FUNC2(info);
	FUNC3(info);
	FUNC0(&info->dev);
}