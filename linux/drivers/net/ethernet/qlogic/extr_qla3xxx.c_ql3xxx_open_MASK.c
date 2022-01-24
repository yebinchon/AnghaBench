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
struct ql3_adapter {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 struct ql3_adapter* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct ql3_adapter*) ; 

__attribute__((used)) static int FUNC2(struct net_device *ndev)
{
	struct ql3_adapter *qdev = FUNC0(ndev);
	return FUNC1(qdev);
}