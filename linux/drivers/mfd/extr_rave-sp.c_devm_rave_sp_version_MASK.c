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
struct rave_sp_version {int /*<<< orphan*/ * letter; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; int /*<<< orphan*/  hardware; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 char const* FUNC0 (struct device*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC2(struct device *dev,
					struct rave_sp_version *version)
{
	/*
	 * NOTE: The format string below uses %02d to display u16
	 * intentionally for the sake of backwards compatibility with
	 * legacy software.
	 */
	return FUNC0(dev, GFP_KERNEL, "%02d%02d%02d.%c%c\n",
			      version->hardware,
			      FUNC1(version->major),
			      version->minor,
			      version->letter[0],
			      version->letter[1]);
}