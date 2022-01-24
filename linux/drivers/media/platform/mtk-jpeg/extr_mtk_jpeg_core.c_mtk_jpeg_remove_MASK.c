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
struct mtk_jpeg_dev {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/  dec_vdev; } ;

/* Variables and functions */
 struct mtk_jpeg_dev* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct mtk_jpeg_dev *jpeg = FUNC0(pdev);

	FUNC1(&pdev->dev);
	FUNC5(jpeg->dec_vdev);
	FUNC4(jpeg->dec_vdev);
	FUNC3(jpeg->m2m_dev);
	FUNC2(&jpeg->v4l2_dev);

	return 0;
}