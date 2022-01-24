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
struct meson_nfc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct meson_nfc*) ; 
 int FUNC1 (struct meson_nfc*) ; 
 struct meson_nfc* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct meson_nfc *nfc = FUNC2(pdev);
	int ret;

	ret = FUNC1(nfc);
	if (ret)
		return ret;

	FUNC0(nfc);

	FUNC3(pdev, NULL);

	return 0;
}