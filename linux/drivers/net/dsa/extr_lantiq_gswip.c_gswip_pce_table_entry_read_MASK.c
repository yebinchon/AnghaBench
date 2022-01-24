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
typedef  int u16 ;
struct gswip_priv {int dummy; } ;
struct gswip_pce_table_entry {int table; int type; int valid; int gmap; void* mask; void** val; void** key; int /*<<< orphan*/  index; scalar_t__ key_mode; } ;

/* Variables and functions */
 int FUNC0 (void**) ; 
 int /*<<< orphan*/  GSWIP_PCE_TBL_ADDR ; 
 int /*<<< orphan*/  GSWIP_PCE_TBL_CTRL ; 
 int GSWIP_PCE_TBL_CTRL_ADDR_MASK ; 
 int GSWIP_PCE_TBL_CTRL_BAS ; 
 int GSWIP_PCE_TBL_CTRL_GMAP_MASK ; 
 int GSWIP_PCE_TBL_CTRL_OPMOD_ADRD ; 
 int GSWIP_PCE_TBL_CTRL_OPMOD_KSRD ; 
 int GSWIP_PCE_TBL_CTRL_OPMOD_MASK ; 
 int GSWIP_PCE_TBL_CTRL_TYPE ; 
 int GSWIP_PCE_TBL_CTRL_VLD ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  GSWIP_PCE_TBL_MASK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct gswip_priv*,int,int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct gswip_priv*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct gswip_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gswip_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct gswip_priv *priv,
				      struct gswip_pce_table_entry *tbl)
{
	int i;
	int err;
	u16 crtl;
	u16 addr_mode = tbl->key_mode ? GSWIP_PCE_TBL_CTRL_OPMOD_KSRD :
					GSWIP_PCE_TBL_CTRL_OPMOD_ADRD;

	err = FUNC5(priv, GSWIP_PCE_TBL_CTRL,
				     GSWIP_PCE_TBL_CTRL_BAS);
	if (err)
		return err;

	FUNC6(priv, tbl->index, GSWIP_PCE_TBL_ADDR);
	FUNC3(priv, GSWIP_PCE_TBL_CTRL_ADDR_MASK |
				GSWIP_PCE_TBL_CTRL_OPMOD_MASK,
			  tbl->table | addr_mode | GSWIP_PCE_TBL_CTRL_BAS,
			  GSWIP_PCE_TBL_CTRL);

	err = FUNC5(priv, GSWIP_PCE_TBL_CTRL,
				     GSWIP_PCE_TBL_CTRL_BAS);
	if (err)
		return err;

	for (i = 0; i < FUNC0(tbl->key); i++)
		tbl->key[i] = FUNC4(priv, FUNC1(i));

	for (i = 0; i < FUNC0(tbl->val); i++)
		tbl->val[i] = FUNC4(priv, FUNC2(i));

	tbl->mask = FUNC4(priv, GSWIP_PCE_TBL_MASK);

	crtl = FUNC4(priv, GSWIP_PCE_TBL_CTRL);

	tbl->type = !!(crtl & GSWIP_PCE_TBL_CTRL_TYPE);
	tbl->valid = !!(crtl & GSWIP_PCE_TBL_CTRL_VLD);
	tbl->gmap = (crtl & GSWIP_PCE_TBL_CTRL_GMAP_MASK) >> 7;

	return 0;
}