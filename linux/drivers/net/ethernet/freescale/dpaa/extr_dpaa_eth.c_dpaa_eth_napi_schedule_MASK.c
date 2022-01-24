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
struct qman_portal {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  napi; struct qman_portal* p; } ;
struct dpaa_percpu_priv {int /*<<< orphan*/  in_interrupt; TYPE_1__ np; } ;

/* Variables and functions */
 int /*<<< orphan*/  QM_PIRQ_DQRI ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct qman_portal*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static inline int FUNC5(struct dpaa_percpu_priv *percpu_priv,
					 struct qman_portal *portal)
{
	if (FUNC4(FUNC0() || !FUNC1())) {
		/* Disable QMan IRQ and invoke NAPI */
		FUNC3(portal, QM_PIRQ_DQRI);

		percpu_priv->np.p = portal;
		FUNC2(&percpu_priv->np.napi);
		percpu_priv->in_interrupt++;
		return 1;
	}
	return 0;
}