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
typedef  int /*<<< orphan*/  u32 ;
struct smsc911x_data {int /*<<< orphan*/  dev_lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* reg_read ) (struct smsc911x_data*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct smsc911x_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u32 FUNC3(struct smsc911x_data *pdata, u32 reg)
{
	u32 data;
	unsigned long flags;

	FUNC0(&pdata->dev_lock, flags);
	data = pdata->ops->reg_read(pdata, reg);
	FUNC1(&pdata->dev_lock, flags);

	return data;
}