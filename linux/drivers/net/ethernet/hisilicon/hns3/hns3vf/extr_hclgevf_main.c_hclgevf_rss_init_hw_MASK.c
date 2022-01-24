#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_8__ {void* ipv6_fragment_en; void* ipv6_sctp_en; void* ipv6_udp_en; void* ipv6_tcp_en; void* ipv4_fragment_en; void* ipv4_sctp_en; void* ipv4_udp_en; void* ipv4_tcp_en; } ;
struct hclgevf_rss_cfg {size_t rss_size; size_t* rss_indirection_tbl; TYPE_4__ rss_tuple_sets; int /*<<< orphan*/  rss_hash_key; int /*<<< orphan*/  hash_algo; } ;
struct TYPE_5__ {size_t rss_size; } ;
struct TYPE_6__ {TYPE_1__ kinfo; } ;
struct hclgevf_dev {TYPE_3__* pdev; TYPE_2__ nic; struct hclgevf_rss_cfg rss_cfg; } ;
struct TYPE_7__ {int revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGEVF_RSS_HASH_ALGO_SIMPLE ; 
 size_t HCLGEVF_RSS_IND_TBL_SIZE ; 
 void* HCLGEVF_RSS_INPUT_TUPLE_OTHER ; 
 void* HCLGEVF_RSS_INPUT_TUPLE_SCTP ; 
 int /*<<< orphan*/  HCLGEVF_RSS_KEY_SIZE ; 
 int /*<<< orphan*/  hclgevf_hash_key ; 
 int FUNC0 (struct hclgevf_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hclgevf_dev*) ; 
 int FUNC2 (struct hclgevf_dev*,struct hclgevf_rss_cfg*) ; 
 int FUNC3 (struct hclgevf_dev*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hclgevf_dev *hdev)
{
	struct hclgevf_rss_cfg *rss_cfg = &hdev->rss_cfg;
	int ret;
	u32 i;

	rss_cfg->rss_size = hdev->nic.kinfo.rss_size;

	if (hdev->pdev->revision >= 0x21) {
		rss_cfg->hash_algo = HCLGEVF_RSS_HASH_ALGO_SIMPLE;
		FUNC4(rss_cfg->rss_hash_key, hclgevf_hash_key,
		       HCLGEVF_RSS_KEY_SIZE);

		ret = FUNC0(hdev, rss_cfg->hash_algo,
					       rss_cfg->rss_hash_key);
		if (ret)
			return ret;

		rss_cfg->rss_tuple_sets.ipv4_tcp_en =
					HCLGEVF_RSS_INPUT_TUPLE_OTHER;
		rss_cfg->rss_tuple_sets.ipv4_udp_en =
					HCLGEVF_RSS_INPUT_TUPLE_OTHER;
		rss_cfg->rss_tuple_sets.ipv4_sctp_en =
					HCLGEVF_RSS_INPUT_TUPLE_SCTP;
		rss_cfg->rss_tuple_sets.ipv4_fragment_en =
					HCLGEVF_RSS_INPUT_TUPLE_OTHER;
		rss_cfg->rss_tuple_sets.ipv6_tcp_en =
					HCLGEVF_RSS_INPUT_TUPLE_OTHER;
		rss_cfg->rss_tuple_sets.ipv6_udp_en =
					HCLGEVF_RSS_INPUT_TUPLE_OTHER;
		rss_cfg->rss_tuple_sets.ipv6_sctp_en =
					HCLGEVF_RSS_INPUT_TUPLE_SCTP;
		rss_cfg->rss_tuple_sets.ipv6_fragment_en =
					HCLGEVF_RSS_INPUT_TUPLE_OTHER;

		ret = FUNC2(hdev, rss_cfg);
		if (ret)
			return ret;

	}

	/* Initialize RSS indirect table */
	for (i = 0; i < HCLGEVF_RSS_IND_TBL_SIZE; i++)
		rss_cfg->rss_indirection_tbl[i] = i % rss_cfg->rss_size;

	ret = FUNC1(hdev);
	if (ret)
		return ret;

	return FUNC3(hdev, rss_cfg->rss_size);
}