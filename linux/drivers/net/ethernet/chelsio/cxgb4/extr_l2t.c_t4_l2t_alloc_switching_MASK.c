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
struct l2t_entry {int /*<<< orphan*/  lock; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  dmac; int /*<<< orphan*/  lport; int /*<<< orphan*/  vlan; int /*<<< orphan*/  state; } ;
struct l2t_data {int /*<<< orphan*/  lock; } ;
struct adapter {struct l2t_data* l2t; } ;

/* Variables and functions */
 int /*<<< orphan*/  L2T_STATE_SWITCHING ; 
 int /*<<< orphan*/  FUNC0 (struct l2t_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct l2t_entry* FUNC5 (struct l2t_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct adapter*,struct l2t_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

struct l2t_entry *FUNC11(struct adapter *adap, u16 vlan,
					 u8 port, u8 *eth_addr)
{
	struct l2t_data *d = adap->l2t;
	struct l2t_entry *e;
	int ret;

	FUNC9(&d->lock);
	e = FUNC5(d, vlan, port, eth_addr);
	if (e) {
		FUNC6(&e->lock);          /* avoid race with t4_l2t_free */
		if (!FUNC2(&e->refcnt)) {
			e->state = L2T_STATE_SWITCHING;
			e->vlan = vlan;
			e->lport = port;
			FUNC4(e->dmac, eth_addr);
			FUNC3(&e->refcnt, 1);
			ret = FUNC8(adap, e, 0);
			if (ret < 0) {
				FUNC0(e);
				FUNC7(&e->lock);
				FUNC10(&d->lock);
				return NULL;
			}
		} else {
			FUNC1(&e->refcnt);
		}

		FUNC7(&e->lock);
	}
	FUNC10(&d->lock);
	return e;
}