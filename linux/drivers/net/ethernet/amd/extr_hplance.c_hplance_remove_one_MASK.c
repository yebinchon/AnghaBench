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
struct net_device {int dummy; } ;
struct dio_dev {int dummy; } ;

/* Variables and functions */
 struct net_device* FUNC0 (struct dio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct dio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct dio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct dio_dev *d)
{
	struct net_device *dev = FUNC0(d);

	FUNC5(dev);
	FUNC4(FUNC2(d), FUNC1(d));
	FUNC3(dev);
}