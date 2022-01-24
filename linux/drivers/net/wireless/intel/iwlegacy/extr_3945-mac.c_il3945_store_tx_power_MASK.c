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
typedef  int /*<<< orphan*/  u32 ;
struct il_priv {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 struct il_priv* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char**,int) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *d, struct device_attribute *attr,
		      const char *buf, size_t count)
{
	struct il_priv *il = FUNC1(d);
	char *p = (char *)buf;
	u32 val;

	val = FUNC3(p, &p, 10);
	if (p == buf)
		FUNC0(": %s is not in decimal form.\n", buf);
	else
		FUNC2(il, val);

	return count;
}