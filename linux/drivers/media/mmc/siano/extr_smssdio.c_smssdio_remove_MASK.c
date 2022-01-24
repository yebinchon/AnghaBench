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
struct smssdio_device {int /*<<< orphan*/  coredev; scalar_t__ split_cb; } ;
struct sdio_func {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smssdio_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdio_func*) ; 
 struct smssdio_device* FUNC3 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC4 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct sdio_func *func)
{
	struct smssdio_device *smsdev;

	smsdev = FUNC3(func);

	/* FIXME: racy! */
	if (smsdev->split_cb)
		FUNC6(smsdev->coredev, smsdev->split_cb);

	FUNC7(smsdev->coredev);

	FUNC1(func);
	FUNC5(func);
	FUNC2(func);
	FUNC4(func);

	FUNC0(smsdev);
}