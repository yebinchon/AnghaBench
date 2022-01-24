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
struct bnxt {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnxt*) ; 
 int FUNC1 (struct bnxt*,int,int,int,int,int,int) ; 
 int FUNC2 (struct bnxt*,int,int,int,int,int,int) ; 

__attribute__((used)) static int FUNC3(struct bnxt *bp, int tx, int rx, int grp,
				   int cp, int stat, int vnic)
{
	if (FUNC0(bp))
		return FUNC1(bp, tx, rx, grp, cp, stat,
						  vnic);
	else
		return FUNC2(bp, tx, rx, grp, cp, stat,
						  vnic);
}