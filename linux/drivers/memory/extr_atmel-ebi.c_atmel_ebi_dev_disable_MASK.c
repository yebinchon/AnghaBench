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
struct property {int length; void* value; void* name; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct atmel_ebi {struct device* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct property* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device_node*,struct property*) ; 

__attribute__((used)) static int FUNC3(struct atmel_ebi *ebi, struct device_node *np)
{
	struct device *dev = ebi->dev;
	struct property *newprop;

	newprop = FUNC1(dev, sizeof(*newprop), GFP_KERNEL);
	if (!newprop)
		return -ENOMEM;

	newprop->name = FUNC0(dev, "status", GFP_KERNEL);
	if (!newprop->name)
		return -ENOMEM;

	newprop->value = FUNC0(dev, "disabled", GFP_KERNEL);
	if (!newprop->value)
		return -ENOMEM;

	newprop->length = sizeof("disabled");

	return FUNC2(np, newprop);
}