#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ppp_net {int /*<<< orphan*/  all_ppp_mutex; int /*<<< orphan*/  units_idr; } ;
struct TYPE_3__ {int index; } ;
struct ppp {TYPE_1__ file; TYPE_2__* dev; int /*<<< orphan*/  ppp_net; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ppp_net* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ppp_unit_count ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct ppp*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct ppp*,int) ; 

__attribute__((used)) static int FUNC10(struct ppp *ppp, int unit, bool ifname_is_set)
{
	struct ppp_net *pn = FUNC3(ppp->ppp_net);
	int ret;

	FUNC1(&pn->all_ppp_mutex);

	if (unit < 0) {
		ret = FUNC7(&pn->units_idr, ppp);
		if (ret < 0)
			goto err;
	} else {
		/* Caller asked for a specific unit number. Fail with -EEXIST
		 * if unavailable. For backward compatibility, return -EEXIST
		 * too if idr allocation fails; this makes pppd retry without
		 * requesting a specific unit number.
		 */
		if (FUNC6(&pn->units_idr, unit)) {
			ret = -EEXIST;
			goto err;
		}
		ret = FUNC9(&pn->units_idr, ppp, unit);
		if (ret < 0) {
			/* Rewrite error for backward compatibility */
			ret = -EEXIST;
			goto err;
		}
	}
	ppp->file.index = ret;

	if (!ifname_is_set)
		FUNC5(ppp->dev->name, IFNAMSIZ, "ppp%i", ppp->file.index);

	FUNC2(&pn->all_ppp_mutex);

	ret = FUNC4(ppp->dev);
	if (ret < 0)
		goto err_unit;

	FUNC0(&ppp_unit_count);

	return 0;

err_unit:
	FUNC1(&pn->all_ppp_mutex);
	FUNC8(&pn->units_idr, ppp->file.index);
err:
	FUNC2(&pn->all_ppp_mutex);

	return ret;
}