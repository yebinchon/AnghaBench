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
typedef  int /*<<< orphan*/  u16 ;
struct h_epa {int dummy; } ;
struct TYPE_2__ {struct h_epa kernel; } ;
struct ehea_qp {TYPE_1__ epas; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QPX_RQ1A_VALUE ; 
 int /*<<< orphan*/  FUNC2 (struct h_epa,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qpx_rq3a ; 

__attribute__((used)) static inline void FUNC3(struct ehea_qp *qp, u16 nr_wqes)
{
	struct h_epa epa = qp->epas.kernel;
	FUNC2(epa, FUNC1(qpx_rq3a),
		      FUNC0(QPX_RQ1A_VALUE, nr_wqes));
}