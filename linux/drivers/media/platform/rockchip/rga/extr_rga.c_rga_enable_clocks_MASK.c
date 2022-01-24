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
struct rockchip_rga {int /*<<< orphan*/  aclk; int /*<<< orphan*/  sclk; int /*<<< orphan*/  dev; int /*<<< orphan*/  hclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC3(struct rockchip_rga *rga)
{
	int ret;

	ret = FUNC1(rga->sclk);
	if (ret) {
		FUNC2(rga->dev, "Cannot enable rga sclk: %d\n", ret);
		return ret;
	}

	ret = FUNC1(rga->aclk);
	if (ret) {
		FUNC2(rga->dev, "Cannot enable rga aclk: %d\n", ret);
		goto err_disable_sclk;
	}

	ret = FUNC1(rga->hclk);
	if (ret) {
		FUNC2(rga->dev, "Cannot enable rga hclk: %d\n", ret);
		goto err_disable_aclk;
	}

	return 0;

err_disable_sclk:
	FUNC0(rga->sclk);
err_disable_aclk:
	FUNC0(rga->aclk);

	return ret;
}