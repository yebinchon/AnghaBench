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
struct smsc911x_data {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_EN ; 
 int /*<<< orphan*/  INT_STS ; 
 struct smsc911x_data* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct smsc911x_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev)
{
	struct smsc911x_data *pdata = FUNC0(dev);

	FUNC1(pdata, INT_EN, 0);
	FUNC1(pdata, INT_STS, 0xFFFFFFFF);
}