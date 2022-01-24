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
struct tg3 {int dummy; } ;

/* Variables and functions */
 int MII_TG3_AUXCTL_ACTL_SMDSP_ENA ; 
 int MII_TG3_AUXCTL_ACTL_TX_6DB ; 
 int /*<<< orphan*/  MII_TG3_AUXCTL_SHDWSEL_AUXCTL ; 
 int FUNC0 (struct tg3*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct tg3*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct tg3 *tp, bool enable)
{
	u32 val;
	int err;

	err = FUNC0(tp, MII_TG3_AUXCTL_SHDWSEL_AUXCTL, &val);

	if (err)
		return err;

	if (enable)
		val |= MII_TG3_AUXCTL_ACTL_SMDSP_ENA;
	else
		val &= ~MII_TG3_AUXCTL_ACTL_SMDSP_ENA;

	err = FUNC1((tp), MII_TG3_AUXCTL_SHDWSEL_AUXCTL,
				   val | MII_TG3_AUXCTL_ACTL_TX_6DB);

	return err;
}