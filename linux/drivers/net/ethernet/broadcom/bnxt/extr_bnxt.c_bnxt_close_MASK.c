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
struct net_device {int dummy; } ;
struct bnxt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt*) ; 
 struct bnxt* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev)
{
	struct bnxt *bp = FUNC4(dev);

	FUNC1(bp);
	FUNC0(bp, true, true);
	FUNC3(bp);
	FUNC2(bp, false);
	return 0;
}