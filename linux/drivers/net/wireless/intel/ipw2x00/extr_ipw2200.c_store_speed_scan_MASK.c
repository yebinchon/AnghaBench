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
struct ipw_priv {int* speed_scan; int /*<<< orphan*/  config; scalar_t__ speed_scan_pos; int /*<<< orphan*/  ieee; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_SPEED_SCAN ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int MAX_SPEED_SCAN ; 
 struct ipw_priv* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*,char) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *d, struct device_attribute *attr,
				const char *buf, size_t count)
{
	struct ipw_priv *priv = FUNC1(d);
	int channel, pos = 0;
	const char *p = buf;

	/* list of space separated channels to scan, optionally ending with 0 */
	while ((channel = FUNC3(p, NULL, 0))) {
		if (pos == MAX_SPEED_SCAN - 1) {
			priv->speed_scan[pos] = 0;
			break;
		}

		if (FUNC2(priv->ieee, channel))
			priv->speed_scan[pos++] = channel;
		else
			FUNC0("Skipping invalid channel request: %d\n",
				    channel);
		p = FUNC4(p, ' ');
		if (!p)
			break;
		while (*p == ' ' || *p == '\t')
			p++;
	}

	if (pos == 0)
		priv->config &= ~CFG_SPEED_SCAN;
	else {
		priv->speed_scan_pos = 0;
		priv->config |= CFG_SPEED_SCAN;
	}

	return count;
}