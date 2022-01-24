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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct nfp_mask_id_table {int mask_id; unsigned long hash_key; int ref_cnt; int /*<<< orphan*/  link; } ;
struct nfp_flower_priv {int /*<<< orphan*/  mask_table; int /*<<< orphan*/  mask_id_seed; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nfp_mask_id_table* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct nfp_app*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_app*,int) ; 

__attribute__((used)) static int
FUNC6(struct nfp_app *app, char *mask_data, u32 mask_len)
{
	struct nfp_flower_priv *priv = app->priv;
	struct nfp_mask_id_table *mask_entry;
	unsigned long hash_key;
	u8 mask_id;

	if (FUNC4(app, &mask_id))
		return -ENOENT;

	mask_entry = FUNC3(sizeof(*mask_entry), GFP_KERNEL);
	if (!mask_entry) {
		FUNC5(app, mask_id);
		return -ENOMEM;
	}

	FUNC0(&mask_entry->link);
	mask_entry->mask_id = mask_id;
	hash_key = FUNC2(mask_data, mask_len, priv->mask_id_seed);
	mask_entry->hash_key = hash_key;
	mask_entry->ref_cnt = 1;
	FUNC1(priv->mask_table, &mask_entry->link, hash_key);

	return mask_id;
}