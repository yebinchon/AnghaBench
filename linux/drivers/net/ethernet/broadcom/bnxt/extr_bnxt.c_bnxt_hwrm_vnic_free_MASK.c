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
typedef  scalar_t__ u16 ;
struct bnxt {scalar_t__ nr_vnics; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnxt*,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct bnxt *bp)
{
	u16 i;

	for (i = 0; i < bp->nr_vnics; i++)
		FUNC0(bp, i);
}