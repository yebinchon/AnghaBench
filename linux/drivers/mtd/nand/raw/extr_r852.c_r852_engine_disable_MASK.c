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
struct r852_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R852_CTL ; 
 int /*<<< orphan*/  R852_CTL_RESET ; 
 int /*<<< orphan*/  R852_HW ; 
 int /*<<< orphan*/  FUNC0 (struct r852_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct r852_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct r852_device *dev)
{
	FUNC1(dev, R852_HW, 0);
	FUNC0(dev, R852_CTL, R852_CTL_RESET);
}