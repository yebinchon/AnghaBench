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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct fbd {int dummy; } ;
struct atmel_isi {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  notifier; int /*<<< orphan*/  fb_descriptors_phys; int /*<<< orphan*/  p_fb_descriptors; } ;

/* Variables and functions */
 int VIDEO_MAX_FRAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct atmel_isi* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct atmel_isi *isi = FUNC1(pdev);

	FUNC0(&pdev->dev,
			sizeof(struct fbd) * VIDEO_MAX_FRAME,
			isi->p_fb_descriptors,
			isi->fb_descriptors_phys);
	FUNC2(&pdev->dev);
	FUNC4(&isi->notifier);
	FUNC3(&isi->notifier);
	FUNC5(&isi->v4l2_dev);

	return 0;
}