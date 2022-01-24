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
typedef  int u8 ;
struct mwifiex_ra_list_tbl {scalar_t__ tdls_link; int /*<<< orphan*/  ra; } ;
struct mwifiex_private {TYPE_1__* aggr_prio_tbl; } ;
struct TYPE_2__ {scalar_t__ ampdu_ap; } ;

/* Variables and functions */
 scalar_t__ BA_STREAM_NOT_ALLOWED ; 
 scalar_t__ FUNC0 (struct mwifiex_private*) ; 
 scalar_t__ MWIFIEX_BSS_ROLE_UAP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mwifiex_private*,struct mwifiex_ra_list_tbl*,int) ; 

__attribute__((used)) static inline u8
FUNC3(struct mwifiex_private *priv,
			 struct mwifiex_ra_list_tbl *ptr, int tid)
{
	if (FUNC1(ptr->ra))
		return false;
	if (FUNC0(priv) == MWIFIEX_BSS_ROLE_UAP) {
		return FUNC2(priv, ptr, tid);
	} else {
		if (ptr->tdls_link)
			return FUNC2(priv, ptr, tid);

		return (priv->aggr_prio_tbl[tid].ampdu_ap !=
			BA_STREAM_NOT_ALLOWED) ? true : false;
	}
}