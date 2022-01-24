#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct h_epa {int dummy; } ;
struct TYPE_2__ {struct h_epa kernel; } ;
struct ehea_cq {TYPE_1__ epas; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CQX_FECADDER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cqx_feca ; 
 int /*<<< orphan*/  FUNC2 (struct h_epa,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct ehea_cq *cq, u32 nr_cqes)
{
	struct h_epa epa = cq->epas.kernel;
	FUNC2(epa, FUNC0(cqx_feca),
		      FUNC1(CQX_FECADDER, nr_cqes));
}