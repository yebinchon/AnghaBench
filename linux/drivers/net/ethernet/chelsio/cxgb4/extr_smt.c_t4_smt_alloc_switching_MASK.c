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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct smt_entry {int refcnt; int /*<<< orphan*/  lock; int /*<<< orphan*/  src_mac; int /*<<< orphan*/  pfvf; int /*<<< orphan*/  state; } ;
struct smt_data {int /*<<< orphan*/  lock; } ;
struct adapter {struct smt_data* smt; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  SMT_STATE_SWITCHING ; 
 struct smt_entry* FUNC0 (struct smt_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,struct smt_entry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct smt_entry *FUNC7(struct adapter *adap, u16 pfvf,
						u8 *smac)
{
	struct smt_data *s = adap->smt;
	struct smt_entry *e;

	FUNC4(&s->lock);
	e = FUNC0(s, smac);
	if (e) {
		FUNC2(&e->lock);
		if (!e->refcnt) {
			e->refcnt = 1;
			e->state = SMT_STATE_SWITCHING;
			e->pfvf = pfvf;
			FUNC1(e->src_mac, smac, ETH_ALEN);
			FUNC5(adap, e);
		} else {
			++e->refcnt;
		}
		FUNC3(&e->lock);
	}
	FUNC6(&s->lock);
	return e;
}