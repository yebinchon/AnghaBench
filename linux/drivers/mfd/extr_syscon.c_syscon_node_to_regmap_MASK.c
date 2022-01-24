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
struct regmap {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct regmap* FUNC0 (int /*<<< orphan*/ ) ; 
 struct regmap* FUNC1 (struct device_node*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*) ; 

struct regmap *FUNC3(struct device_node *np)
{
	if (!FUNC2(np, "syscon"))
		return FUNC0(-EINVAL);

	return FUNC1(np, true);
}