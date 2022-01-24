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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int dummy; } ;
struct bnxt {struct net_device* dev; } ;

/* Variables and functions */
 struct net_device* FUNC0 (struct bnxt*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct net_device *FUNC1(struct bnxt *bp, u16 cfa_code)
{
	struct net_device *dev = FUNC0(bp, cfa_code);

	/* if vf-rep dev is NULL, the must belongs to the PF */
	return dev ? dev : bp->dev;
}