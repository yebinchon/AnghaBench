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
struct v4l2_capability {int /*<<< orphan*/  card; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  driver; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTK_PLATFORM_STR ; 
 int /*<<< orphan*/  MTK_VCODEC_DEC_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct file *file, void *priv,
				struct v4l2_capability *cap)
{
	FUNC0(cap->driver, MTK_VCODEC_DEC_NAME, sizeof(cap->driver));
	FUNC0(cap->bus_info, MTK_PLATFORM_STR, sizeof(cap->bus_info));
	FUNC0(cap->card, MTK_PLATFORM_STR, sizeof(cap->card));

	return 0;
}