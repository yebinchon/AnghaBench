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
struct work_struct {int dummy; } ;
struct octeon_droq {int dummy; } ;
struct octeon_device {struct octeon_droq** droq; } ;
struct lio {struct octeon_device* oct_dev; } ;
struct cavium_wk {int ctxul; scalar_t__ ctxptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIO_IFSTATE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct lio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct octeon_droq*) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*,struct octeon_droq*) ; 

__attribute__((used)) static void FUNC3(struct work_struct *work)
{
	struct cavium_wk *wk = (struct cavium_wk *)work;
	struct lio *lio = (struct lio *)wk->ctxptr;
	struct octeon_device *oct = lio->oct_dev;
	int q_no = wk->ctxul;
	struct octeon_droq *droq = oct->droq[q_no];

	if (!FUNC0(lio, LIO_IFSTATE_RUNNING) || !droq)
		return;

	if (FUNC1(droq))
		FUNC2(oct, droq);
}