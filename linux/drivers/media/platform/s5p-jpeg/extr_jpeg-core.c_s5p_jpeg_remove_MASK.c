#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct s5p_jpeg {int /*<<< orphan*/ * clocks; TYPE_1__* variant; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  m2m_dev; int /*<<< orphan*/  vfd_encoder; int /*<<< orphan*/  vfd_decoder; int /*<<< orphan*/  dev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int num_clocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct s5p_jpeg* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct s5p_jpeg *jpeg = FUNC1(pdev);
	int i;

	FUNC2(jpeg->dev);

	FUNC7(jpeg->vfd_decoder);
	FUNC7(jpeg->vfd_encoder);
	FUNC6(&pdev->dev);
	FUNC5(jpeg->m2m_dev);
	FUNC4(&jpeg->v4l2_dev);

	if (!FUNC3(&pdev->dev)) {
		for (i = jpeg->variant->num_clocks - 1; i >= 0; i--)
			FUNC0(jpeg->clocks[i]);
	}

	return 0;
}