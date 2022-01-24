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
typedef  int /*<<< orphan*/  u32 ;
struct hinic_dev {int /*<<< orphan*/  rss_hash_engine; int /*<<< orphan*/  rss_type; int /*<<< orphan*/  num_rss; int /*<<< orphan*/  rss_tmpl_idx; } ;
typedef  int /*<<< orphan*/  default_rss_key ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HINIC_RSS_INDIR_SIZE ; 
 int HINIC_RSS_KEY_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hinic_dev*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hinic_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hinic_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct hinic_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct hinic_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(struct hinic_dev *nic_dev)
{
	u8 default_rss_key[HINIC_RSS_KEY_SIZE];
	u8 tmpl_idx = nic_dev->rss_tmpl_idx;
	u32 *indir_tbl;
	int err, i;

	indir_tbl = FUNC6(HINIC_RSS_INDIR_SIZE, sizeof(u32), GFP_KERNEL);
	if (!indir_tbl)
		return -ENOMEM;

	FUNC8(default_rss_key, sizeof(default_rss_key));
	for (i = 0; i < HINIC_RSS_INDIR_SIZE; i++)
		indir_tbl[i] = FUNC0(i, nic_dev->num_rss);

	err = FUNC4(nic_dev, tmpl_idx, default_rss_key);
	if (err)
		goto out;

	err = FUNC3(nic_dev, tmpl_idx, indir_tbl);
	if (err)
		goto out;

	err = FUNC5(nic_dev, tmpl_idx, nic_dev->rss_type);
	if (err)
		goto out;

	err = FUNC2(nic_dev, tmpl_idx,
					nic_dev->rss_hash_engine);
	if (err)
		goto out;

	err = FUNC1(nic_dev, 1, tmpl_idx);
	if (err)
		goto out;

out:
	FUNC7(indir_tbl);
	return err;
}