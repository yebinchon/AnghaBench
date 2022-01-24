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
struct m_can_classdev {int /*<<< orphan*/  dev; void* cclk; void* hclk; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,char*) ; 

int FUNC3(struct m_can_classdev *m_can_dev)
{
	int ret = 0;

	m_can_dev->hclk = FUNC2(m_can_dev->dev, "hclk");
	m_can_dev->cclk = FUNC2(m_can_dev->dev, "cclk");

	if (FUNC0(m_can_dev->cclk)) {
		FUNC1(m_can_dev->dev, "no clock found\n");
		ret = -ENODEV;
	}

	return ret;
}