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
struct mii_bus {struct fec_info* priv; } ;
struct fec_info {int /*<<< orphan*/  fecp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fec_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_bus*) ; 
 struct mii_bus* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *ofdev)
{
	struct mii_bus *bus = FUNC4(ofdev);
	struct fec_info *fec = bus->priv;

	FUNC3(bus);
	FUNC0(fec->fecp);
	FUNC1(fec);
	FUNC2(bus);

	return 0;
}