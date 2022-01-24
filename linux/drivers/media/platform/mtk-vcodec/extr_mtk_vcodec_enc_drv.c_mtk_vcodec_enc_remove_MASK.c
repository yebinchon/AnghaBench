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
struct mtk_vcodec_dev {int /*<<< orphan*/  v4l2_dev; scalar_t__ vfd_enc; scalar_t__ m2m_dev_enc; int /*<<< orphan*/  encode_workqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_vcodec_dev*) ; 
 struct mtk_vcodec_dev* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct mtk_vcodec_dev *dev = FUNC4(pdev);

	FUNC2();
	FUNC1(dev->encode_workqueue);
	FUNC0(dev->encode_workqueue);
	if (dev->m2m_dev_enc)
		FUNC6(dev->m2m_dev_enc);

	if (dev->vfd_enc)
		FUNC7(dev->vfd_enc);

	FUNC5(&dev->v4l2_dev);
	FUNC3(dev);
	return 0;
}