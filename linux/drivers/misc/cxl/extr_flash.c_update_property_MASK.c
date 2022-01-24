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
typedef  int u32 ;
struct property {int length; struct property* value; struct property* name; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct device_node*,struct property*) ; 
 int /*<<< orphan*/  FUNC2 (struct property*) ; 
 struct property* FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct property*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct device_node*,char const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct device_node *dn, const char *name,
			   u32 vd, char *value)
{
	struct property *new_prop;
	u32 *val;
	int rc;

	new_prop = FUNC4(sizeof(*new_prop), GFP_KERNEL);
	if (!new_prop)
		return -ENOMEM;

	new_prop->name = FUNC3(name, GFP_KERNEL);
	if (!new_prop->name) {
		FUNC2(new_prop);
		return -ENOMEM;
	}

	new_prop->length = vd;
	new_prop->value = FUNC4(new_prop->length, GFP_KERNEL);
	if (!new_prop->value) {
		FUNC2(new_prop->name);
		FUNC2(new_prop);
		return -ENOMEM;
	}
	FUNC5(new_prop->value, value, vd);

	val = (u32 *)new_prop->value;
	rc = FUNC1(dn, new_prop);
	FUNC6("%pOFn: update property (%s, length: %i, value: %#x)\n",
		  dn, name, vd, FUNC0(*val));

	if (rc) {
		FUNC2(new_prop->name);
		FUNC2(new_prop->value);
		FUNC2(new_prop);
	}
	return rc;
}