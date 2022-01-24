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
struct bnx2 {scalar_t__ rv2p_firmware; } ;

/* Variables and functions */
 int FUNC0 (struct bnx2*) ; 

__attribute__((used)) static int FUNC1(struct bnx2 *bp)
{
	return bp->rv2p_firmware ? 0 : FUNC0(bp);
}