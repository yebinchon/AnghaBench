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
struct ipw_priv {int /*<<< orphan*/  config; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_NO_LED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct ipw_priv* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipw_priv*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *d, struct device_attribute *attr,
			 const char *buf, size_t count)
{
	struct ipw_priv *priv = FUNC2(d);

	FUNC0("enter\n");

	if (count == 0)
		return 0;

	if (*buf == 0) {
		FUNC1("Disabling LED control.\n");
		priv->config |= CFG_NO_LED;
		FUNC4(priv);
	} else {
		FUNC1("Enabling LED control.\n");
		priv->config &= ~CFG_NO_LED;
		FUNC3(priv);
	}

	FUNC0("exit\n");
	return count;
}