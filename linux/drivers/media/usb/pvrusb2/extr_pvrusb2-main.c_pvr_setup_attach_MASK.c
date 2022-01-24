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
struct pvr2_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  class_ptr ; 
 int /*<<< orphan*/  FUNC0 (struct pvr2_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct pvr2_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pvr2_context*) ; 

__attribute__((used)) static void FUNC3(struct pvr2_context *pvr)
{
	/* Create association with v4l layer */
	FUNC2(pvr);
#ifdef CONFIG_VIDEO_PVRUSB2_DVB
	/* Create association with dvb layer */
	pvr2_dvb_create(pvr);
#endif
#ifdef CONFIG_VIDEO_PVRUSB2_SYSFS
	pvr2_sysfs_create(pvr,class_ptr);
#endif /* CONFIG_VIDEO_PVRUSB2_SYSFS */
}