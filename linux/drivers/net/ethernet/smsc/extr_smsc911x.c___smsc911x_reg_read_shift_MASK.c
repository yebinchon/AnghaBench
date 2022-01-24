#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int flags; } ;
struct smsc911x_data {scalar_t__ ioaddr; TYPE_1__ config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int SMSC911X_USE_16BIT ; 
 int SMSC911X_USE_32BIT ; 
 scalar_t__ FUNC1 (struct smsc911x_data*,int) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static inline u32
FUNC4(struct smsc911x_data *pdata, u32 reg)
{
	if (pdata->config.flags & SMSC911X_USE_32BIT)
		return FUNC2(pdata->ioaddr + FUNC1(pdata, reg));

	if (pdata->config.flags & SMSC911X_USE_16BIT)
		return (FUNC3(pdata->ioaddr +
				FUNC1(pdata, reg)) & 0xFFFF) |
			((FUNC3(pdata->ioaddr +
			FUNC1(pdata, reg + 2)) & 0xFFFF) << 16);

	FUNC0();
	return 0;
}