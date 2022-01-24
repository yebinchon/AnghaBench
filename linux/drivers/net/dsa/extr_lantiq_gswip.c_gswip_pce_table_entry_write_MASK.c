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
struct gswip_pce_table_entry {int index; int table; int* key; int* val; int mask; int gmap; scalar_t__ valid; scalar_t__ type; scalar_t__ key_mode; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  GSWIP_PCE_TBL_ADDR ; 
 int /*<<< orphan*/  GSWIP_PCE_TBL_CTRL ; 
 int GSWIP_PCE_TBL_CTRL_ADDR_MASK ; 
 int GSWIP_PCE_TBL_CTRL_BAS ; 
 int GSWIP_PCE_TBL_CTRL_GMAP_MASK ; 
 int GSWIP_PCE_TBL_CTRL_OPMOD_ADWR ; 
 int GSWIP_PCE_TBL_CTRL_OPMOD_KSWR ; 
 int GSWIP_PCE_TBL_CTRL_OPMOD_MASK ; 
 int GSWIP_PCE_TBL_CTRL_TYPE ; 
 int GSWIP_PCE_TBL_CTRL_VLD ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  GSWIP_PCE_TBL_MASK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct gswip_priv*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct gswip_priv*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct gswip_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gswip_priv*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct gswip_priv *priv,
				       struct gswip_pce_table_entry *tbl)
{
	int i;
	int err;
	u16 crtl;
	u16 addr_mode = tbl->key_mode ? GSWIP_PCE_TBL_CTRL_OPMOD_KSWR :
					GSWIP_PCE_TBL_CTRL_OPMOD_ADWR;

	err = FUNC5(priv, GSWIP_PCE_TBL_CTRL,
				     GSWIP_PCE_TBL_CTRL_BAS);
	if (err)
		return err;

	FUNC6(priv, tbl->index, GSWIP_PCE_TBL_ADDR);
	FUNC3(priv, GSWIP_PCE_TBL_CTRL_ADDR_MASK |
				GSWIP_PCE_TBL_CTRL_OPMOD_MASK,
			  tbl->table | addr_mode,
			  GSWIP_PCE_TBL_CTRL);

	for (i = 0; i < FUNC0(tbl->key); i++)
		FUNC6(priv, tbl->key[i], FUNC1(i));

	for (i = 0; i < FUNC0(tbl->val); i++)
		FUNC6(priv, tbl->val[i], FUNC2(i));

	FUNC3(priv, GSWIP_PCE_TBL_CTRL_ADDR_MASK |
				GSWIP_PCE_TBL_CTRL_OPMOD_MASK,
			  tbl->table | addr_mode,
			  GSWIP_PCE_TBL_CTRL);

	FUNC6(priv, tbl->mask, GSWIP_PCE_TBL_MASK);

	crtl = FUNC4(priv, GSWIP_PCE_TBL_CTRL);
	crtl &= ~(GSWIP_PCE_TBL_CTRL_TYPE | GSWIP_PCE_TBL_CTRL_VLD |
		  GSWIP_PCE_TBL_CTRL_GMAP_MASK);
	if (tbl->type)
		crtl |= GSWIP_PCE_TBL_CTRL_TYPE;
	if (tbl->valid)
		crtl |= GSWIP_PCE_TBL_CTRL_VLD;
	crtl |= (tbl->gmap << 7) & GSWIP_PCE_TBL_CTRL_GMAP_MASK;
	crtl |= GSWIP_PCE_TBL_CTRL_BAS;
	FUNC6(priv, crtl, GSWIP_PCE_TBL_CTRL);

	return FUNC5(priv, GSWIP_PCE_TBL_CTRL,
				      GSWIP_PCE_TBL_CTRL_BAS);
}