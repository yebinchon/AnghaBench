#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  platform_data; int /*<<< orphan*/ * parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct pcap_subdev {int /*<<< orphan*/  platform_data; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct pcap_chip {TYPE_1__* spi; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct platform_device*) ; 
 struct platform_device* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*) ; 

__attribute__((used)) static int FUNC3(struct pcap_chip *pcap,
						struct pcap_subdev *subdev)
{
	struct platform_device *pdev;
	int ret;

	pdev = FUNC1(subdev->name, subdev->id);
	if (!pdev)
		return -ENOMEM;

	pdev->dev.parent = &pcap->spi->dev;
	pdev->dev.platform_data = subdev->platform_data;

	ret = FUNC0(pdev);
	if (ret)
		FUNC2(pdev);

	return ret;
}