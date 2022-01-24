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
struct rvu_pfvf {int dummy; } ;
struct rvu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rvu*,int /*<<< orphan*/ ) ; 
 struct rvu_pfvf* FUNC1 (struct rvu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rvu_pfvf*,int) ; 

bool FUNC3(struct rvu *rvu, u16 pcifunc, int blktype)
{
	struct rvu_pfvf *pfvf;

	if (!FUNC0(rvu, pcifunc))
		return false;

	pfvf = FUNC1(rvu, pcifunc);

	/* Check if this PFFUNC has a LF of type blktype attached */
	if (!FUNC2(pfvf, blktype))
		return false;

	return true;
}