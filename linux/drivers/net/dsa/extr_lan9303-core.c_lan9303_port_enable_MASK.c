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
struct phy_device {int dummy; } ;
struct lan9303 {int dummy; } ;
struct dsa_switch {struct lan9303* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dsa_switch*,int) ; 
 int FUNC1 (struct lan9303*,int) ; 

__attribute__((used)) static int FUNC2(struct dsa_switch *ds, int port,
			       struct phy_device *phy)
{
	struct lan9303 *chip = ds->priv;

	if (!FUNC0(ds, port))
		return 0;

	return FUNC1(chip, port);
}