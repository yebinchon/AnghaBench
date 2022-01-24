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
struct device {int dummy; } ;
struct cxl {struct cxl* native; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cxl*) ; 
 int /*<<< orphan*/  FUNC1 (struct cxl*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct cxl* FUNC3 (struct device*) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct cxl *adapter = FUNC3(dev);

	FUNC2("cxl_release_adapter\n");

	FUNC0(adapter);

	FUNC1(adapter->native);
	FUNC1(adapter);
}