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
 int /*<<< orphan*/  ENODEV ; 
 struct regmap* FUNC0 (int /*<<< orphan*/ ) ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 struct regmap* FUNC3 (struct device_node*) ; 

struct regmap *FUNC4(const char *s)
{
	struct device_node *syscon_np;
	struct regmap *regmap;

	syscon_np = FUNC1(NULL, NULL, s);
	if (!syscon_np)
		return FUNC0(-ENODEV);

	regmap = FUNC3(syscon_np);
	FUNC2(syscon_np);

	return regmap;
}