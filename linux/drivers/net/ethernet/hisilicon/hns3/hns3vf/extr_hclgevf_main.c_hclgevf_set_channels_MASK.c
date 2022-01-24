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
typedef  unsigned int u32 ;
typedef  unsigned int u16 ;
struct hnae3_knic_private_info {unsigned int rss_size; unsigned int num_tqps; int num_tc; } ;
struct hnae3_handle {struct hnae3_knic_private_info kinfo; } ;
struct hclgevf_dev {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int HCLGEVF_RSS_IND_TBL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int,unsigned int,int) ; 
 struct hclgevf_dev* FUNC2 (struct hnae3_handle*) ; 
 int FUNC3 (struct hnae3_handle*,unsigned int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hclgevf_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct hnae3_handle*,unsigned int) ; 
 unsigned int* FUNC6 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int*) ; 

__attribute__((used)) static int FUNC8(struct hnae3_handle *handle, u32 new_tqps_num,
				bool rxfh_configured)
{
	struct hclgevf_dev *hdev = FUNC2(handle);
	struct hnae3_knic_private_info *kinfo = &handle->kinfo;
	u16 cur_rss_size = kinfo->rss_size;
	u16 cur_tqps = kinfo->num_tqps;
	u32 *rss_indir;
	unsigned int i;
	int ret;

	FUNC5(handle, new_tqps_num);

	ret = FUNC4(hdev, kinfo->rss_size);
	if (ret)
		return ret;

	/* RSS indirection table has been configuared by user */
	if (rxfh_configured)
		goto out;

	/* Reinitializes the rss indirect table according to the new RSS size */
	rss_indir = FUNC6(HCLGEVF_RSS_IND_TBL_SIZE, sizeof(u32), GFP_KERNEL);
	if (!rss_indir)
		return -ENOMEM;

	for (i = 0; i < HCLGEVF_RSS_IND_TBL_SIZE; i++)
		rss_indir[i] = i % kinfo->rss_size;

	ret = FUNC3(handle, rss_indir, NULL, 0);
	if (ret)
		FUNC0(&hdev->pdev->dev, "set rss indir table fail, ret=%d\n",
			ret);

	FUNC7(rss_indir);

out:
	if (!ret)
		FUNC1(&hdev->pdev->dev,
			 "Channels changed, rss_size from %u to %u, tqps from %u to %u",
			 cur_rss_size, kinfo->rss_size,
			 cur_tqps, kinfo->rss_size * kinfo->num_tc);

	return ret;
}