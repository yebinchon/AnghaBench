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
struct pcmcia_device {struct local_info* priv; int /*<<< orphan*/  dev; } ;
struct local_info {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct local_info* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pcmcia_device *p_dev)
{
	struct local_info *local;

	FUNC1(&p_dev->dev, "atmel_attach()\n");

	/* Allocate space for private device-specific data */
	local = FUNC2(sizeof(*local), GFP_KERNEL);
	if (!local)
		return -ENOMEM;

	p_dev->priv = local;

	return FUNC0(p_dev);
}