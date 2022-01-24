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
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIS ; 
 int TIS_RESERVED ; 
 int TIS_TFUF ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct net_device *ndev)
{
	u32 tis = FUNC1(ndev, TIS);

	if (tis & TIS_TFUF) {
		FUNC2(ndev, ~(TIS_TFUF | TIS_RESERVED), TIS);
		FUNC0(ndev);
		return true;
	}
	return false;
}