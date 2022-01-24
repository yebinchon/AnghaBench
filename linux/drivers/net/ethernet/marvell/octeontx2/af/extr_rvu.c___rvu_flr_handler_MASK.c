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
struct rvu {int /*<<< orphan*/  flr_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKADDR_CPT0 ; 
 int /*<<< orphan*/  BLKADDR_NIX0 ; 
 int /*<<< orphan*/  BLKADDR_NPA ; 
 int /*<<< orphan*/  BLKADDR_SSO ; 
 int /*<<< orphan*/  BLKADDR_SSOW ; 
 int /*<<< orphan*/  BLKADDR_TIM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rvu*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct rvu *rvu, u16 pcifunc)
{
	FUNC0(&rvu->flr_lock);
	/* Reset order should reflect inter-block dependencies:
	 * 1. Reset any packet/work sources (NIX, CPT, TIM)
	 * 2. Flush and reset SSO/SSOW
	 * 3. Cleanup pools (NPA)
	 */
	FUNC2(rvu, pcifunc, BLKADDR_NIX0);
	FUNC2(rvu, pcifunc, BLKADDR_CPT0);
	FUNC2(rvu, pcifunc, BLKADDR_TIM);
	FUNC2(rvu, pcifunc, BLKADDR_SSOW);
	FUNC2(rvu, pcifunc, BLKADDR_SSO);
	FUNC2(rvu, pcifunc, BLKADDR_NPA);
	FUNC3(rvu, NULL, pcifunc);
	FUNC1(&rvu->flr_lock);
}