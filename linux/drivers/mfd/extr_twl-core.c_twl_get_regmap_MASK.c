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
typedef  size_t u8 ;
struct twl_client {struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct TYPE_4__ {struct twl_client* twl_modules; TYPE_1__* twl_map; int /*<<< orphan*/  ready; } ;
struct TYPE_3__ {int sid; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 size_t FUNC1 () ; 
 TYPE_2__* twl_priv ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static struct regmap *FUNC3(u8 mod_no)
{
	int sid;
	struct twl_client *twl;

	if (FUNC2(!twl_priv || !twl_priv->ready)) {
		FUNC0("%s: not initialized\n", DRIVER_NAME);
		return NULL;
	}
	if (FUNC2(mod_no >= FUNC1())) {
		FUNC0("%s: invalid module number %d\n", DRIVER_NAME, mod_no);
		return NULL;
	}

	sid = twl_priv->twl_map[mod_no].sid;
	twl = &twl_priv->twl_modules[sid];

	return twl->regmap;
}