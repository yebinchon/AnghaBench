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
struct platform_device {int dummy; } ;
struct mtk_vcodec_dev {int /*<<< orphan*/  v4l2_dev; scalar_t__ vfd_dec; scalar_t__ m2m_dev_dec; int /*<<< orphan*/  decode_workqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_vcodec_dev*) ; 
 struct mtk_vcodec_dev* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct mtk_vcodec_dev *dev = FUNC3(pdev);

	FUNC1(dev->decode_workqueue);
	FUNC0(dev->decode_workqueue);
	if (dev->m2m_dev_dec)
		FUNC5(dev->m2m_dev_dec);

	if (dev->vfd_dec)
		FUNC6(dev->vfd_dec);

	FUNC4(&dev->v4l2_dev);
	FUNC2(dev);
	return 0;
}