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
struct v4l2_streamparm {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  source; } ;
struct stm32_dcmi {TYPE_1__ entity; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_streamparm*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 struct stm32_dcmi* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
		       struct v4l2_streamparm *p)
{
	struct stm32_dcmi *dcmi = FUNC2(file);

	return FUNC0(FUNC1(file), dcmi->entity.source, p);
}