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
struct net_device {int /*<<< orphan*/  name; } ;
struct ipw2100_priv {int dump_raw; struct net_device* net_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct ipw2100_priv* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipw2100_priv*) ; 
 char FUNC3 (char const) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *d, struct device_attribute *attr,
			    const char *buf, size_t count)
{
	struct ipw2100_priv *priv = FUNC1(d);
	struct net_device *dev = priv->net_dev;
	const char *p = buf;

	(void)dev;		/* kill unused-var warning for debug-only code */

	if (count < 1)
		return count;

	if (p[0] == '1' ||
	    (count >= 2 && FUNC3(p[0]) == 'o' && FUNC3(p[1]) == 'n')) {
		FUNC0("%s: Setting memory dump to RAW mode.\n",
			       dev->name);
		priv->dump_raw = 1;

	} else if (p[0] == '0' || (count >= 2 && FUNC3(p[0]) == 'o' &&
				   FUNC3(p[1]) == 'f')) {
		FUNC0("%s: Setting memory dump to HEX mode.\n",
			       dev->name);
		priv->dump_raw = 0;

	} else if (FUNC3(p[0]) == 'r') {
		FUNC0("%s: Resetting firmware snapshot.\n", dev->name);
		FUNC2(priv);

	} else
		FUNC0("%s: Usage: 0|on = HEX, 1|off = RAW, "
			       "reset = clear memory snapshot\n", dev->name);

	return count;
}