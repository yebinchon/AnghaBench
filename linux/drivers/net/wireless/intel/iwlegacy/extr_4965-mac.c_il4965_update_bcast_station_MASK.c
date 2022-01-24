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
typedef  size_t u8 ;
struct TYPE_4__ {size_t bcast_id; } ;
struct il_priv {int /*<<< orphan*/  sta_lock; TYPE_1__* stations; TYPE_2__ hw_params; } ;
struct il_link_quality_cmd {int dummy; } ;
struct TYPE_3__ {struct il_link_quality_cmd* lq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct il_link_quality_cmd* FUNC2 (struct il_priv*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct il_link_quality_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC6(struct il_priv *il)
{
	unsigned long flags;
	struct il_link_quality_cmd *link_cmd;
	u8 sta_id = il->hw_params.bcast_id;

	link_cmd = FUNC2(il, sta_id);
	if (!link_cmd) {
		FUNC1("Unable to initialize rate scaling for bcast sta.\n");
		return -ENOMEM;
	}

	FUNC4(&il->sta_lock, flags);
	if (il->stations[sta_id].lq)
		FUNC3(il->stations[sta_id].lq);
	else
		FUNC0("Bcast sta rate scaling has not been initialized.\n");
	il->stations[sta_id].lq = link_cmd;
	FUNC5(&il->sta_lock, flags);

	return 0;
}