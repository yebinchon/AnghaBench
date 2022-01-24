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
struct ov7251 {int /*<<< orphan*/  dev; int /*<<< orphan*/  io_regulator; int /*<<< orphan*/  analog_regulator; int /*<<< orphan*/  core_regulator; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ov7251 *ov7251)
{
	int ret;

	ret = FUNC1(ov7251->core_regulator);
	if (ret < 0)
		FUNC0(ov7251->dev, "core regulator disable failed\n");

	ret = FUNC1(ov7251->analog_regulator);
	if (ret < 0)
		FUNC0(ov7251->dev, "analog regulator disable failed\n");

	ret = FUNC1(ov7251->io_regulator);
	if (ret < 0)
		FUNC0(ov7251->dev, "io regulator disable failed\n");
}