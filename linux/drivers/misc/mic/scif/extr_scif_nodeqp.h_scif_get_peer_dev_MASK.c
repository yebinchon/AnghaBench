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
struct scif_peer_dev {int /*<<< orphan*/  dev; } ;
struct scif_dev {int /*<<< orphan*/  spdev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct device* FUNC0 (int /*<<< orphan*/ ) ; 
 struct device* FUNC1 (int /*<<< orphan*/ *) ; 
 struct scif_peer_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static inline struct device *FUNC5(struct scif_dev *scifdev)
{
	struct scif_peer_dev *spdev;
	struct device *spdev_ret;

	FUNC3();
	spdev = FUNC2(scifdev->spdev);
	if (spdev)
		spdev_ret = FUNC1(&spdev->dev);
	else
		spdev_ret = FUNC0(-ENODEV);
	FUNC4();
	return spdev_ret;
}