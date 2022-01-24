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
struct pcmcia_device {scalar_t__ priv; int /*<<< orphan*/  dev; } ;
struct local_info {int /*<<< orphan*/ * eth_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pcmcia_device *link)
{
	FUNC1(&link->dev, "airo_detach\n");

	FUNC0(link);

	if (((struct local_info *)link->priv)->eth_dev) {
		FUNC3(((struct local_info *)link->priv)->eth_dev,
			       0);
	}
	((struct local_info *)link->priv)->eth_dev = NULL;

	FUNC2(link->priv);
}