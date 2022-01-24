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
struct ocxl_file_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OCXL_NUM_MINORS ; 
 int FUNC0 (int /*<<< orphan*/ *,struct ocxl_file_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  minors_idr ; 
 int /*<<< orphan*/  minors_idr_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ocxl_file_info *info)
{
	int minor;

	FUNC1(&minors_idr_lock);
	minor = FUNC0(&minors_idr, info, 0, OCXL_NUM_MINORS, GFP_KERNEL);
	FUNC2(&minors_idr_lock);
	return minor;
}