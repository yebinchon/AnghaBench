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
struct sdhci_omap_host {char* version; int /*<<< orphan*/  pinctrl; struct device* dev; } ;
struct pinctrl_state {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct pinctrl_state* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct pinctrl_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char*) ; 
 struct pinctrl_state* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,char*) ; 

__attribute__((used)) static struct pinctrl_state
*FUNC5(struct sdhci_omap_host *omap_host, char *mode,
				  u32 *caps, u32 capmask)
{
	struct device *dev = omap_host->dev;
	char *version = omap_host->version;
	struct pinctrl_state *pinctrl_state = FUNC0(-ENODEV);
	char str[20];

	if (!(*caps & capmask))
		goto ret;

	if (version) {
		FUNC4(str, 20, "%s-%s", mode, version);
		pinctrl_state = FUNC3(omap_host->pinctrl, str);
	}

	if (FUNC1(pinctrl_state))
		pinctrl_state = FUNC3(omap_host->pinctrl, mode);

	if (FUNC1(pinctrl_state)) {
		FUNC2(dev, "no pinctrl state for %s mode", mode);
		*caps &= ~capmask;
	}

ret:
	return pinctrl_state;
}