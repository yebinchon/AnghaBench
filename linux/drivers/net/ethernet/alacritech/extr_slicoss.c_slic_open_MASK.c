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
struct slic_device {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int) ; 
 struct slic_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct slic_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct slic_device *sdev = FUNC1(dev);
	int err;

	FUNC2(dev);

	err = FUNC4(sdev);
	if (err) {
		FUNC0(dev, "failed to initialize interface: %i\n", err);
		return err;
	}

	FUNC3(dev);

	return 0;
}